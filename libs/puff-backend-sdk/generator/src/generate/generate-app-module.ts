import { Generate } from './generate';
import * as ts from 'typescript';
import { generateImportDeclaration } from '../common/helper';


export class GenerateAppModule extends Generate {
  filename = 'app/app.module.ts';

  imports = [
    { from: '@nestjs/common', importClause: ['Module'] },
    { from: '@nestjs/schedule', importClause: ['ScheduleModule'] },
    { from: './workflow/workflow.module', importClause: ['WorkflowModule'] },
    { from: './app.controller', importClause: ['AppController'] }
  ];

  addedImports = [];

  constructor(public ctx = {
    dependencies: []
  }) {
    super();
  }

  // _normalizeImports() {
  //
  // }

  _dummyMainAst() {
    const asts = [
      ts.createClassDeclaration(
        [ts.createDecorator(ts.createCall(
          ts.createIdentifier('Module'),
          undefined,
          [ts.createObjectLiteral(
            [
              ts.createPropertyAssignment(
                ts.createIdentifier('imports'),
                ts.createArrayLiteral(
                  [
                    ts.createCall(
                      ts.createPropertyAccess(
                        ts.createIdentifier('ScheduleModule'),
                        ts.createIdentifier('forRoot')
                      ),
                      undefined,
                      []
                    ),
                    ts.createIdentifier('WorkflowModule')
                  ],
                  true
                )
              ),
              ts.createPropertyAssignment(
                ts.createIdentifier('controllers'),
                ts.createArrayLiteral(
                  [ts.createIdentifier('AppController')],
                  false
                )
              ),
              ts.createPropertyAssignment(
                ts.createIdentifier('providers'),
                ts.createArrayLiteral(
                  [],
                  false
                )
              )
            ],
            true
          )]
        ))],
        [ts.createModifier(ts.SyntaxKind.ExportKeyword)],
        ts.createIdentifier('AppModule'),
        undefined,
        undefined,
        []
      )
    ];

    return [
      ...this._normalizeImports().map(it => {
        return generateImportDeclaration(it.from, it.importClause);
      }),
      ...asts
    ];
  }

  generate() {
    this._normalizeImports();
    this.ctx.dependencies = this.imports.map(it => it.from);

    const result = this._dummyMainAst();
    this._postGenerate();
    return result;
  }

  protected _postGenerate() {
    this.addedImports = [];
  }
}
