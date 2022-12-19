import * as ts from 'typescript';
import { generateImportDeclaration } from '../common/helper';
import { Generate } from './generate';

export class GenerateMain extends Generate {

  filename = 'main.ts'

  private _hasHttp = true;
  get hasHttp(): boolean {
    return this._hasHttp;
  }

  set hasHttp(value: boolean) {
    this._hasHttp = value;
  }

  private _hasSwagger = false;
  get hasSwagger() {
    return this._hasHttp && this._hasSwagger;
  }

  set hasSwagger(value: boolean) {
    this._hasSwagger = value;
  }

  imports = [
    { from: '@nestjs/common', importClause: ['Logger'] },
    { from: '@nestjs/core', importClause: ['NestFactory'] },
    { from: './app/app.module', importClause: ['AppModule'] }
  ];

  addedImports = [];

  constructor(public ctx = {
    dependencies: []
  }) {
    super()
  }

  _normalizeImports() {
    if (this.hasSwagger) {
      this.addedImports.push({
        from: '@nestjs/swagger', importClause: ['DocumentBuilder', 'SwaggerModule']
      });
    }

    return []

    //region arrange imports order and combine import clause
    //endregion
  }

  _dummyMainAst() {
    return [
      //imports
      ...[...this.imports, ...this.addedImports].map(it => {
        return generateImportDeclaration(it.from, it.importClause);
      }),

      this._generateBootstrapFn(),

      //bootstrap()
      ts.createExpressionStatement(ts.createCall(
        ts.createIdentifier('bootstrap'),
        undefined,
        []
      ))
    ];
  }

  _generateSwaggerFn() {
    if (!this.hasSwagger) return [];

    return [
      ts.addSyntheticLeadingComment(
        ts.createNotEmittedStatement(ts.createEmptyStatement()),
        ts.SyntaxKind.SingleLineCommentTrivia, 'region swagger api'),
      ts.createVariableStatement(
        undefined,
        ts.createVariableDeclarationList(
          [ts.createVariableDeclaration(
            ts.createIdentifier('apiPath'),
            undefined,
            ts.createStringLiteral('/swagger-api')
          )],
          ts.NodeFlags.Const | ts.NodeFlags.AwaitContext | ts.NodeFlags.ContextFlags | ts.NodeFlags.TypeExcludesFlags
        )
      ),
      ts.createVariableStatement(
        undefined,
        ts.createVariableDeclarationList(
          [ts.createVariableDeclaration(
            ts.createIdentifier('options'),
            undefined,
            ts.createCall(
              ts.createPropertyAccess(
                ts.createCall(
                  ts.createPropertyAccess(
                    ts.createCall(
                      ts.createPropertyAccess(
                        ts.createCall(
                          ts.createPropertyAccess(
                            ts.createCall(
                              ts.createPropertyAccess(
                                ts.createNew(
                                  ts.createIdentifier('DocumentBuilder'),
                                  undefined,
                                  []
                                ),
                                ts.createIdentifier('setTitle')
                              ),
                              undefined,
                              [ts.createStringLiteral('api')]
                            ),
                            ts.createIdentifier('setDescription')
                          ),
                          undefined,
                          [ts.createStringLiteral('API description ')]
                        ),
                        ts.createIdentifier('setVersion')
                      ),
                      undefined,
                      [ts.createStringLiteral('1.0')]
                    ),
                    ts.createIdentifier('addBearerAuth')
                  ),
                  undefined,
                  []
                ),
                ts.createIdentifier('build')
              ),
              undefined,
              []
            )
          )],
          ts.NodeFlags.Const | ts.NodeFlags.AwaitContext | ts.NodeFlags.ContextFlags | ts.NodeFlags.TypeExcludesFlags
        )
      ),
      ts.createVariableStatement(
        undefined,
        ts.createVariableDeclarationList(
          [ts.createVariableDeclaration(
            ts.createIdentifier('document'),
            undefined,
            ts.createCall(
              ts.createPropertyAccess(
                ts.createIdentifier('SwaggerModule'),
                ts.createIdentifier('createDocument')
              ),
              undefined,
              [
                ts.createIdentifier('app'),
                ts.createIdentifier('options')
              ]
            )
          )],
          ts.NodeFlags.Const | ts.NodeFlags.AwaitContext | ts.NodeFlags.ContextFlags | ts.NodeFlags.TypeExcludesFlags
        )
      ),
      ts.createExpressionStatement(ts.createCall(
        ts.createPropertyAccess(
          ts.createIdentifier('SwaggerModule'),
          ts.createIdentifier('setup')
        ),
        undefined,
        [
          ts.createIdentifier('apiPath'),
          ts.createIdentifier('app'),
          ts.createIdentifier('document')
        ]
      )),
      ts.addSyntheticLeadingComment(
        ts.createNotEmittedStatement(ts.createEmptyStatement()),
        ts.SyntaxKind.SingleLineCommentTrivia, 'endregion')
    ];
  }

  _generateBootstrapFn() {
    return ts.createFunctionDeclaration(
      undefined,
      [ts.createModifier(ts.SyntaxKind.AsyncKeyword)],
      undefined,
      ts.createIdentifier('bootstrap'),
      undefined,
      [],
      undefined,
      ts.createBlock(
        [
          ...(/* function generateHasHttp */() => {
            if (!this.hasHttp) return [];
            return [
              ts.createVariableStatement(
                undefined,
                ts.createVariableDeclarationList(
                  [ts.createVariableDeclaration(
                    ts.createIdentifier('app'),
                    undefined,
                    ts.createAwait(ts.createCall(
                      ts.createPropertyAccess(
                        ts.createIdentifier('NestFactory'),
                        ts.createIdentifier('create')
                      ),
                      undefined,
                      [ts.createIdentifier('AppModule')]
                    ))
                  )],
                  ts.NodeFlags.Const | ts.NodeFlags.AwaitContext | ts.NodeFlags.ContextFlags | ts.NodeFlags.TypeExcludesFlags
                )
              ),
              ts.createVariableStatement(
                undefined,
                ts.createVariableDeclarationList(
                  [ts.createVariableDeclaration(
                    ts.createIdentifier('globalPrefix'),
                    undefined,
                    ts.createStringLiteral('api')
                  )],
                  ts.NodeFlags.Const | ts.NodeFlags.AwaitContext | ts.NodeFlags.ContextFlags | ts.NodeFlags.TypeExcludesFlags
                )
              ),
              ts.createExpressionStatement(ts.createCall(
                ts.createPropertyAccess(
                  ts.createIdentifier('app'),
                  ts.createIdentifier('setGlobalPrefix')
                ),
                undefined,
                [ts.createIdentifier('globalPrefix')]
              )),
              ...this._generateSwaggerFn(),
              ts.createVariableStatement(
                undefined,
                ts.createVariableDeclarationList(
                  [ts.createVariableDeclaration(
                    ts.createIdentifier('port'),
                    undefined,
                    ts.createBinary(
                      ts.createPropertyAccess(
                        ts.createPropertyAccess(
                          ts.createIdentifier('process'),
                          ts.createIdentifier('env')
                        ),
                        ts.createIdentifier('PORT')
                      ),
                      ts.createToken(ts.SyntaxKind.BarBarToken),
                      ts.createNumericLiteral('3333')
                    )
                  )],
                  ts.NodeFlags.Const | ts.NodeFlags.AwaitContext | ts.NodeFlags.ContextFlags | ts.NodeFlags.TypeExcludesFlags
                )
              ),
              ts.createExpressionStatement(ts.createAwait(ts.createCall(
                ts.createPropertyAccess(
                  ts.createIdentifier('app'),
                  ts.createIdentifier('listen')
                ),
                undefined,
                [
                  ts.createIdentifier('port'),
                  ts.createArrowFunction(
                    undefined,
                    undefined,
                    [],
                    undefined,
                    ts.createToken(ts.SyntaxKind.EqualsGreaterThanToken),
                    ts.createBlock(
                      [ts.createExpressionStatement(ts.createCall(
                        ts.createPropertyAccess(
                          ts.createIdentifier('Logger'),
                          ts.createIdentifier('log')
                        ),
                        undefined,
                        [ts.createBinary(
                          ts.createBinary(
                            ts.createBinary(
                              ts.createStringLiteral('Listening at http://localhost:'),
                              ts.createToken(ts.SyntaxKind.PlusToken),
                              ts.createIdentifier('port')
                            ),
                            ts.createToken(ts.SyntaxKind.PlusToken),
                            ts.createStringLiteral('/')
                          ),
                          ts.createToken(ts.SyntaxKind.PlusToken),
                          ts.createIdentifier('globalPrefix')
                        )]
                      ))],
                      true
                    )
                  )
                ]
              )))
            ];
          })(),
          ...(/*function generateNotHasHttp*/() => {
            if (this.hasHttp) return [];
            return [
              ts.createVariableStatement(
                undefined,
                ts.createVariableDeclarationList(
                  [ts.createVariableDeclaration(
                    ts.createIdentifier('app'),
                    undefined,
                    ts.createAwait(ts.createCall(
                      ts.createPropertyAccess(
                        ts.createIdentifier('NestFactory'),
                        ts.createIdentifier('createApplicationContext')
                      ),
                      undefined,
                      [ts.createIdentifier('AppModule')]
                    ))
                  )],
                  ts.NodeFlags.Const | ts.NodeFlags.AwaitContext | ts.NodeFlags.ContextFlags | ts.NodeFlags.TypeExcludesFlags
                )
              ),
              ...this._generateSwaggerFn(),
              ts.createExpressionStatement(ts.createCall(
                ts.createPropertyAccess(
                  ts.createIdentifier('Logger'),
                  ts.createIdentifier('log')
                ),
                undefined,
                [ts.createStringLiteral('Server running without http server')]
              ))
            ];
          })(),

          ts.createReturn(ts.createIdentifier('app'))
        ],
        true
      )
    );
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
