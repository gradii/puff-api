/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import * as fs from 'fs-extra';
import { join as pathJoin } from 'path';
import * as prettier from 'prettier';
import { Options } from 'prettier';
import * as ts from 'typescript';

/**
 *
 */
export abstract class Generate {
  imports = [];

  addedImports = [];

  abstract filename;
  abstract ctx;
  private prettierConfig: Options = {
    parser: 'typescript'
  };


  writeFile(file, content) {
    fs.outputFileSync(pathJoin(this.ctx.rootDir, file), content, { encoding: 'utf8' });
  }

  printFile(asts) {
    const printer = ts.createPrinter({ newLine: ts.NewLineKind.LineFeed, omitTrailingSemicolon: true, removeComments: false });

    const resultFile = ts.createSourceFile(
      this.filename,
      '',
      ts.ScriptTarget.Latest,
      /*setParentNodes*/ false,
      ts.ScriptKind.TS);

    // @ts-ignore
    resultFile.statements = ts.createNodeArray(asts);
    const result = printer.printNode(ts.EmitHint.Unspecified, resultFile, resultFile);
    return result;
  }

  outputFile(asts, prettierConfig = {}) {
    const file = this.printFile(asts);
    const formatted = prettier.format(file, { ...this.prettierConfig, ...prettierConfig });
    this.writeFile(this.filename, formatted);
    // this.writeFile(this.filename, file);
  }

  protected _preGenerate() {

  }

  _normalizeImports() {
    // if (this.hasSwagger) {
    //   this.addedImports.push({
    //     from: '@nestjs/swagger', importClause: ['DocumentBuilder', 'SwaggerModule']
    //   });
    // }

    //region arrange imports order and combine import clause
    //endregion

    const rst: { [key: string]: Set<string> } = {};

    const namseSpaceImport = [];

    for (const it of [...this.imports, ...this.addedImports]) {
      // rst[it.from] = it.importClause;
      if (!rst[it.from]) {
        rst[it.from] = new Set();
      }
      if (Array.isArray(it.importClause)) {
        it.importClause.forEach(importClause => {
          rst[it.from].add(importClause);
        });
      } else if (typeof it.importClause === 'string') {
        namseSpaceImport.push(
          { from: it.from, importClause: it.importClause }
        );
      }
    }
    const rstList = [];
    for (const [key, val] of Object.entries(rst)) {
      rstList.push({ from: key, importClause: Array.from(val) });
    }

    return [...rstList.filter(it => it.importClause.length > 0), ...namseSpaceImport];
  }

  generate() {
    this._preGenerate();
    this._postGenerate();
  }

  protected _postGenerate() {
    this.addedImports = [];
  }
}
