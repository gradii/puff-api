/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { pascalCase, slugCase } from '@gradii/nanofn';
import { generateImportDeclaration } from '../../common/generate-helper/generate-import-declaration';
import ts from 'typescript';
import { Generate } from '../generate';

const { factory } = ts;

export class GenerateWorkflowSagaService extends Generate {
  filename = 'app/workflow/workflow-saga.service.ts';

  imports = [
    {from: '@nestjs/common', importClause: ['Injectable', 'Logger']},
    {from: '@nestjs/cqrs', importClause: ['ICommand', 'ofType', 'Saga']},
    {from: 'rxjs', importClause: ['Observable', 'EMPTY']},
    {from: './workflow-base.event', importClause: ['WorkflowBaseEvent']},
    {from: 'rxjs/operators', importClause: ['filter', 'tap', 'mapTo']},
    {from: 'fs-extra', importClause: 'fse'}
  ];

  // todo type
  constructor(public ctx: any) {
    super();
  }

  generate() {
    const {projectName} = this.ctx;

    this.addedImports.push(
      {
        from        : `./${slugCase(projectName)}/events/${slugCase(projectName)}.events`,
        importClause: [`${pascalCase(projectName)}FailureEvent`]
      }
    );

    const LogAsts = [
      factory.createExpressionStatement(factory.createCallExpression(
        factory.createPropertyAccessExpression(
          factory.createPropertyAccessExpression(
            factory.createThis(),
            factory.createIdentifier('logger')
          ),
          factory.createIdentifier('log')
        ),
        undefined,
        [
          factory.createTemplateExpression(
            factory.createTemplateHead(
              'workflowId: ',
              'workflowId: '
            ),
            [
              factory.createTemplateSpan(
                factory.createPropertyAccessExpression(
                  factory.createIdentifier('evt'),
                  factory.createIdentifier('workflowId')
                ),
                factory.createTemplateMiddle(
                  ' name: ',
                  ' name: '
                )
              ),
              factory.createTemplateSpan(
                factory.createPropertyAccessExpression(
                  factory.createPropertyAccessExpression(
                    factory.createIdentifier('evt'),
                    factory.createIdentifier('constructor')
                  ),
                  factory.createIdentifier('name')
                ),
                factory.createTemplateMiddle(
                  ' params: ',
                  ' params: '
                )
              ),
              factory.createTemplateSpan(
                factory.createCallExpression(
                  factory.createPropertyAccessExpression(
                    factory.createIdentifier('JSON'),
                    factory.createIdentifier('stringify')
                  ),
                  undefined,
                  [
                    factory.createPropertyAccessExpression(
                      factory.createIdentifier('evt'),
                      factory.createIdentifier('params')
                    )
                  ]
                ),
                factory.createTemplateTail(
                  ' \\n',
                  ' \\n'
                )
              )
            ]
          )
        ]
      ))
    ];

    const LogGlobalAsts = [
      factory.createExpressionStatement(factory.createCallExpression(
        factory.createPropertyAccessExpression(
          factory.createPropertyAccessExpression(
            factory.createThis(),
            factory.createIdentifier('logger')
          ),
          factory.createIdentifier('error')
        ),
        undefined,
        [
          factory.createTemplateExpression(
            factory.createTemplateHead(
              'workflowId: ',
              'workflowId: '
            ),
            [
              factory.createTemplateSpan(
                factory.createPropertyAccessExpression(
                  factory.createIdentifier('evt'),
                  factory.createIdentifier('workflowId')
                ),
                factory.createTemplateMiddle(
                  ' ',
                  ' '
                )
              ),
              factory.createTemplateSpan(
                factory.createPropertyAccessChain(
                  factory.createPropertyAccessExpression(
                    factory.createIdentifier('evt'),
                    factory.createIdentifier('result')
                  ),
                  factory.createToken(ts.SyntaxKind.QuestionDotToken),
                  factory.createIdentifier('message')
                ),
                factory.createTemplateMiddle(
                  ' data: ',
                  ' data: '
                )
              ),
              factory.createTemplateSpan(
                factory.createPropertyAccessChain(
                  factory.createPropertyAccessChain(
                    factory.createPropertyAccessExpression(
                      factory.createIdentifier('evt'),
                      factory.createIdentifier('result')
                    ),
                    factory.createToken(ts.SyntaxKind.QuestionDotToken),
                    factory.createIdentifier('response')
                  ),
                  factory.createToken(ts.SyntaxKind.QuestionDotToken),
                  factory.createIdentifier('data')
                ),
                factory.createTemplateTail(
                  ' \\n',
                  ' \\n'
                )
              )
            ]
          )
        ]
      )),
      factory.createExpressionStatement(factory.createCallExpression(
        factory.createPropertyAccessExpression(
          factory.createIdentifier('fse'),
          factory.createIdentifier('ensureFileSync')
        ),
        undefined,
        [factory.createStringLiteral('/var/log/workflow-log/error.log')]
      )),
      factory.createExpressionStatement(factory.createCallExpression(
        factory.createPropertyAccessExpression(
          factory.createIdentifier('fse'),
          factory.createIdentifier('appendFileSync')
        ),
        undefined,
        [
          factory.createStringLiteral('/var/log/workflow-log/error.log'),
          factory.createTemplateExpression(
            factory.createTemplateHead(
              '[workflowId]: ',
              '[workflowId]: '
            ),
            [
              factory.createTemplateSpan(
                factory.createPropertyAccessExpression(
                  factory.createIdentifier('evt'),
                  factory.createIdentifier('workflowId')
                ),
                factory.createTemplateMiddle(
                  ' message: "',
                  ' message: "'
                )
              ),
              factory.createTemplateSpan(
                factory.createPropertyAccessChain(
                  factory.createPropertyAccessExpression(
                    factory.createIdentifier('evt'),
                    factory.createIdentifier('result')
                  ),
                  factory.createToken(ts.SyntaxKind.QuestionDotToken),
                  factory.createIdentifier('message')
                ),
                factory.createTemplateMiddle(
                  '" data: "',
                  '" data: "'
                )
              ),
              factory.createTemplateSpan(
                factory.createPropertyAccessChain(
                  factory.createPropertyAccessChain(
                    factory.createPropertyAccessExpression(
                      factory.createIdentifier('evt'),
                      factory.createIdentifier('result')
                    ),
                    factory.createToken(ts.SyntaxKind.QuestionDotToken),
                    factory.createIdentifier('response')
                  ),
                  factory.createToken(ts.SyntaxKind.QuestionDotToken),
                  factory.createIdentifier('data')
                ),
                factory.createTemplateTail(
                  '"\\n\\n',
                  '"\\n\\n'
                )
              )
            ]
          )
        ]
      ))
    ];


    const ast = [
      factory.createClassDeclaration(
        [
          factory.createDecorator(factory.createCallExpression(
            factory.createIdentifier('Injectable'),
            undefined,
            []
          ))
        ],
        [factory.createModifier(ts.SyntaxKind.ExportKeyword)],
        factory.createIdentifier('WorkflowSagaService'),
        undefined,
        undefined,
        [
          factory.createPropertyDeclaration(
            undefined,
            [
              factory.createModifier(ts.SyntaxKind.PrivateKeyword),
              factory.createModifier(ts.SyntaxKind.ReadonlyKeyword)
            ],
            factory.createIdentifier('logger'),
            undefined,
            undefined,
            factory.createNewExpression(
              factory.createIdentifier('Logger'),
              undefined,
              [
                factory.createPropertyAccessExpression(
                  factory.createIdentifier('WorkflowSagaService'),
                  factory.createIdentifier('name')
                )
              ]
            )
          ),
          factory.createConstructorDeclaration(
            undefined,
            undefined,
            [],
            factory.createBlock(
              [],
              true
            )
          ),
          factory.createPropertyDeclaration(
            [
              factory.createDecorator(factory.createCallExpression(
                factory.createIdentifier('Saga'),
                undefined,
                []
              ))
            ],
            undefined,
            factory.createIdentifier('sagaWorkflow'),
            undefined,
            undefined,
            factory.createArrowFunction(
              undefined,
              undefined,
              [
                factory.createParameterDeclaration(
                  undefined,
                  undefined,
                  undefined,
                  factory.createIdentifier('events$'),
                  undefined,
                  factory.createTypeReferenceNode(
                    factory.createIdentifier('Observable'),
                    [factory.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword)]
                  ),
                  undefined
                )
              ],
              factory.createTypeReferenceNode(
                factory.createIdentifier('Observable'),
                [
                  factory.createTypeReferenceNode(
                    factory.createIdentifier('ICommand'),
                    undefined
                  )
                ]
              ),
              factory.createToken(ts.SyntaxKind.EqualsGreaterThanToken),
              factory.createBlock(
                [
                  factory.createReturnStatement(
                    factory.createCallExpression(
                    factory.createPropertyAccessExpression(
                      factory.createIdentifier('events$'),
                      factory.createIdentifier('pipe')
                    ),
                    undefined,
                    [
                      factory.createCallExpression(
                        factory.createIdentifier('ofType'),
                        undefined,
                        [factory.createIdentifier('WorkflowBaseEvent')]
                      ),
                      factory.createCallExpression(
                        factory.createIdentifier('tap'),
                        undefined,
                        [
                          factory.createArrowFunction(
                            undefined,
                            undefined,
                            [
                              factory.createParameterDeclaration(
                                undefined,
                                undefined,
                                undefined,
                                factory.createIdentifier('evt'),
                                undefined,
                                factory.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword),
                                undefined
                              )
                            ],
                            undefined,
                            factory.createToken(ts.SyntaxKind.EqualsGreaterThanToken),
                            factory.createBlock(
                              LogAsts,
                              true
                            )
                          )
                        ]
                      ),
                      factory.createCallExpression(
                        factory.createIdentifier('ofType'),
                        undefined,
                        [factory.createIdentifier(`${pascalCase(projectName)}FailureEvent`)]
                      ),
                      factory.createCallExpression(
                        factory.createIdentifier('tap'),
                        undefined,
                        [
                          factory.createArrowFunction(
                            undefined,
                            undefined,
                            [
                              factory.createParameterDeclaration(
                                undefined,
                                undefined,
                                undefined,
                                factory.createIdentifier('evt'),
                                undefined,
                                factory.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword),
                                undefined
                              )
                            ],
                            undefined,
                            factory.createToken(ts.SyntaxKind.EqualsGreaterThanToken),
                            factory.createBlock(
                              LogGlobalAsts,
                              true
                            )
                          )
                        ]
                      ),
                      factory.createCallExpression(
                        factory.createIdentifier('filter'),
                        undefined,
                        [
                          factory.createArrowFunction(
                            undefined,
                            undefined,
                            [
                              factory.createParameterDeclaration(
                                undefined,
                                undefined,
                                undefined,
                                factory.createIdentifier('it'),
                                undefined,
                                undefined,
                                undefined
                              )
                            ],
                            undefined,
                            factory.createToken(ts.SyntaxKind.EqualsGreaterThanToken),
                            factory.createPrefixUnaryExpression(
                              ts.SyntaxKind.ExclamationToken,
                              factory.createIdentifier('it')
                            )
                          )
                        ]
                      )
                    ]
                  ))
                ],
                true
              )
            )
          )


        ])
    ];

    const asts = [
      ...this._normalizeImports().map(it => {
        return generateImportDeclaration(it.from, it.importClause);
      }),
      ...ast
    ];

    this._postGenerate();
    return asts;
  }
}
