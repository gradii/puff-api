import { buildConfig } from 'package-tools';
import * as path from 'path';
import * as fse from 'fs-extra';
import { cloneFsRepo } from '../../lib/common/common';
import { generateRepoPath } from '../common';
import * as ts from 'typescript';
import { GenerateMain } from '../../lib/generate/generate-main';
import * as prettier from 'prettier';
import * as fs from 'fs';

const root = buildConfig.projectDir;
const dummyRepo = path.join(root, 'storage/_workbench/dummy-repo');

describe('backend bootstrap', () => {
  const testProjectRepo = generateRepoPath();

  beforeAll(async () => {
    await fse.ensureDirSync(testProjectRepo);
    await cloneFsRepo(dummyRepo, testProjectRepo);
  });

  afterAll(async () => {
    await fse.remove(testProjectRepo);
  });

  const printer = ts.createPrinter({ newLine: ts.NewLineKind.LineFeed, omitTrailingSemicolon: true,  removeComments: false });

  let resultFile: ts.SourceFile;
  beforeEach(() => {
    resultFile = ts.createSourceFile('someFileName.ts', '', ts.ScriptTarget.Latest, /*setParentNodes*/ false, ts.ScriptKind.TS);
  });

  it('test generate main.ts', () => {
    const generateMain = new GenerateMain();

    resultFile.statements = ts.createNodeArray(generateMain.generate());

    const result = printer.printNode(ts.EmitHint.Unspecified, resultFile, resultFile);

    expect(result).toMatchSnapshot();

    const prettierConfig = JSON.parse(fs.readFileSync(path.join(testProjectRepo, '.prettierrc'), { encoding: 'utf8' }));

    const formatted = prettier.format(result, { ...prettierConfig, parser: 'typescript' });

    expect(formatted).toMatchSnapshot();
  });

  it('test generate main.ts with hasHttp false', () => {
    const generateMain = new GenerateMain();
    generateMain.hasHttp = false;

    resultFile.statements = ts.createNodeArray(generateMain.generate());

    const result = printer.printNode(ts.EmitHint.Unspecified, resultFile, resultFile);

    expect(result).toMatchSnapshot();

    const prettierConfig = JSON.parse(fs.readFileSync(path.join(testProjectRepo, '.prettierrc'), { encoding: 'utf8' }));

    const formatted = prettier.format(result, { ...prettierConfig, parser: 'typescript' });

    expect(formatted).toMatchSnapshot();
  });

  it('test generate main.ts with swagger', () => {
    const generateMain = new GenerateMain();
    generateMain.hasHttp = true;
    generateMain.hasSwagger = true;

    resultFile.statements = ts.createNodeArray(generateMain.generate());

    const result = printer.printNode(ts.EmitHint.Unspecified, resultFile, resultFile);

    expect(result).toMatchSnapshot('hasHttp = true; hasSwagger = true;');

    const prettierConfig = JSON.parse(fs.readFileSync(path.join(testProjectRepo, '.prettierrc'), { encoding: 'utf8' }));

    const formatted = prettier.format(result, { ...prettierConfig, parser: 'typescript' });

    expect(formatted).toMatchSnapshot('hasHttp = true; hasSwagger = true; prettier!');

    generateMain.hasHttp = false;

    resultFile.statements = ts.createNodeArray(generateMain.generate());
    const resultWithoutHttp = printer.printNode(ts.EmitHint.Unspecified, resultFile, resultFile);

    expect(resultWithoutHttp).toMatchSnapshot('hasHttp false; hasSwagger = true;');
  });

});
