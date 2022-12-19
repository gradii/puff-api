import { buildConfig } from 'package-tools';
import * as path from 'path';
import * as fse from 'fs-extra';
import { cloneFsRepo } from '../lib/common/common';
import * as fs from 'fs';
import * as json5 from 'json5';
import { RepoTools } from '../lib/common/repo-tools';
import { generateRepoPath } from './common';

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

  it('test project repo exist', () => {
    expect(fs.existsSync(path.join(testProjectRepo, 'angular.json'))).toBeTruthy();
    expect(fs.existsSync(path.join(testProjectRepo, 'nx.json'))).toBeTruthy();
  });

  it('shoud find bootstrap entry', () => {
    const nxJson = fs.readFileSync(path.join(testProjectRepo, 'nx.json'), { encoding: 'utf8' });
    const angularJson = fs.readFileSync(path.join(testProjectRepo, 'angular.json'), { encoding: 'utf8' });
    const nxData = json5.parse(nxJson);
    const angularData = json5.parse(nxJson);

    expect(Object.keys(nxData.projects).length).toBeGreaterThan(0);

  });

  it('should find backend project', () => {
    const repoTools = new RepoTools(testProjectRepo);
    repoTools.setBackendProject();
    expect(Reflect.get(repoTools, 'backendProjectInfo')).toBeDefined();
    expect(repoTools.getBackendProject()).toBeDefined();

    const projectInfo = repoTools.getBackendProject();

    expect(projectInfo.architect.build.options.main).toBe('apps/backend/src/main.ts');
  });

  it('should get main file from backend project', () => {
    const repoTools = new RepoTools(testProjectRepo);
    const projectInfo = repoTools.getBackendProject();

    expect(projectInfo.architect.build.options.main).toBe('apps/backend/src/main.ts');

    const repoTools2 = new RepoTools(testProjectRepo);
    expect(repoTools2.getBackendProjectMainFile()).toBe('apps/backend/src/main.ts');
  });


});
