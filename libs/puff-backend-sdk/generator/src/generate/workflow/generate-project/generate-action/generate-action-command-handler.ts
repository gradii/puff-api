/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { camelCase as camel, pascalCase as pascal, slugCase as slug } from '@gradii/nanofn';
import { BodyType, HttpRequestParameterType, ParameterValueType, WorkflowStepParameter } from '@gradii/puff-backend/common-models';
import { getStepParametersConfig } from '@gradii/puff-backend/puff-workflow';


import * as ts from 'typescript';
import { generateImportDeclaration } from '../../../../common/helper';
import { Generate } from '../../../generate';


export class GenerateActionCommandHandler extends Generate {

  get filename() {
    const {slugProjectName}     = this.ctx;
    const {workflowActionModel} = this.ctx;
    return `app/workflow/${slugProjectName}/actions/${slug(
      workflowActionModel.name)}-command-handler.service.ts`;
  }

  imports = [
    {from: '@nestjs/cqrs', importClause: ['CommandHandler', 'EventBus', 'ICommandHandler']},
    {from: '@nestjs/core', importClause: ['ModuleRef']},
    {from: 'rxjs', importClause: ['Observable', 'of', 'EMPTY', 'ObservableInput']},
    {
      from        : 'rxjs/operators',
      importClause: ['filter', 'map', 'switchMap', 'takeUntil', 'tap', 'catchError']
    },
    {
      from        : '../../kill-action-command-handler.service',
      importClause: ['KillActionCommandHandlerService']
    },

    {from: './common-command-handler', importClause: ['CommonCommandHandler']},
    {from: '@nestjs/common', importClause: ['HttpService']}
  ];

  addedImports = [];

  addedConstructors = [];

  addedMethods = [];

  private idx: number = 0;

  constructor(
    public ctx: {
      slugProjectName: string,
      workflowActionModel: any,
      [key: string]: any
    }) {
    super();
  }

  _generateCustomCode(code) {
    code       = code.replace(/\{\{([^\}]+?)\}\}/g, '$1');
    const asts = ts.createSourceFile('', code, ts.ScriptTarget.Latest, false,
      ts.ScriptKind.TS).statements;

    return [
      ts.createCall(
        ts.createIdentifier('map'),
        [
          ts.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword),
          ts.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword)
        ],
        [
          ts.createArrowFunction(
            undefined,
            undefined,
            [
              ts.createParameter(
                undefined,
                undefined,
                undefined,
                ts.createObjectBindingPattern([
                  ts.createBindingElement(
                    undefined,
                    undefined,
                    ts.createIdentifier('command'),
                    undefined
                  ),
                  ts.createBindingElement(
                    undefined,
                    undefined,
                    ts.createIdentifier('params'),
                    undefined
                  ),
                  ts.createBindingElement(
                    undefined,
                    undefined,
                    ts.createIdentifier('result'),
                    undefined
                  ),
                  ts.createBindingElement(
                    undefined,
                    undefined,
                    ts.createIdentifier('workflowId'),
                    undefined
                  ),
                  ts.createBindingElement(
                    undefined,
                    undefined,
                    ts.createIdentifier('triggerEvent'),
                    undefined
                  )
                ]),
                undefined,
                ts.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword),
                undefined
              )
            ],
            undefined,
            ts.createToken(ts.SyntaxKind.EqualsGreaterThanToken),
            ts.createBlock(
              asts,
              true
            )
          )
        ]
      )
    ];
  }

  _generateExecuteAction(stepModel) {
    const {workflowModel} = this.ctx;
    if (stepModel.params.length === 0) {
      return [];
    }

    const action = workflowModel.find(it => it.id === stepModel.params[0].value);

    this.addedImports.push(
      {
        from: `./${slug(action.name)}-action.command`,
        importClause: [`${pascal(action.name)}ActionCommand`]
      },
      {
        from: `./${slug(action.name)}-command-handler.service`,
        importClause: [`${pascal(action.name)}ActionCommandHandlerService`]
      }
    );

    this.addedConstructors.push(
      ts.createParameter(
        undefined,
        [ts.createModifier(ts.SyntaxKind.ProtectedKeyword)],
        undefined,
        ts.createIdentifier(`${camel(action.name)}ActionCommandHandlerService`),
        undefined,
        ts.createTypeReferenceNode(
          ts.createIdentifier(`${pascal(action.name)}ActionCommandHandlerService`),
          undefined
        ),
        undefined
      )
    );

    const asts = [
      ts.createReturn(ts.createCall(
        ts.createPropertyAccess(
          ts.createPropertyAccess(
            ts.createThis(),
            ts.createIdentifier(`${camel(action.name)}ActionCommandHandlerService`)
          ),
          ts.createIdentifier('execute')
        ),
        undefined,
        [
          ts.createNew(
            ts.createIdentifier(`${pascal(action.name)}ActionCommand`),
            undefined,
            [
              ts.createIdentifier('workflowId'),
              ts.createIdentifier('result'),
              ts.createIdentifier('triggerEvent')
            ]
          )
        ]
      ))
    ];

    return [
      ts.createCall(
        ts.createIdentifier('switchMap'),
        [
          ts.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword),
          ts.createTypeReferenceNode(
            ts.createIdentifier('ObservableInput'),
            [ts.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword)]
          )
        ],
        [
          ts.createArrowFunction(
            undefined,
            undefined,
            [
              ts.createParameter(
                undefined,
                undefined,
                undefined,
                ts.createObjectBindingPattern([
                  ts.createBindingElement(
                    undefined,
                    undefined,
                    ts.createIdentifier('command'),
                    undefined
                  ),
                  ts.createBindingElement(
                    undefined,
                    undefined,
                    ts.createIdentifier('params'),
                    undefined
                  ),
                  ts.createBindingElement(
                    undefined,
                    undefined,
                    ts.createIdentifier('result'),
                    undefined
                  ),
                  ts.createBindingElement(
                    undefined,
                    undefined,
                    ts.createIdentifier('workflowId'),
                    undefined
                  ),
                  ts.createBindingElement(
                    undefined,
                    undefined,
                    ts.createIdentifier('triggerEvent'),
                    undefined
                  )
                ]),
                undefined,
                ts.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword),
                undefined
              )
            ],
            undefined,
            ts.createToken(ts.SyntaxKind.EqualsGreaterThanToken),
            ts.createBlock(
              asts,
              true
            )
          )
        ]
      )
    ];
  }

  _generateHttpRequest(stepModel) {
    // this.addedImports.push()
    const {params = []} = stepModel;

    const paramTypes: string[]                                  = Object.values(
      HttpRequestParameterType);
    const stepParams: { [name: string]: WorkflowStepParameter } = getStepParametersConfig(params,
      paramTypes);

    const method          = stepParams[HttpRequestParameterType.METHOD];
    const url             = stepParams[HttpRequestParameterType.URL];
    const queryParams     = stepParams[HttpRequestParameterType.QUERY_PARAMS];
    const headers         = stepParams[HttpRequestParameterType.HEADERS];
    const body            = stepParams[HttpRequestParameterType.BODY];
    const bodyType        = stepParams[HttpRequestParameterType.BODY_TYPE];
    const withCredentials = stepParams[HttpRequestParameterType.WITH_CREDENTIALS];

    const firstArg = url.value;

    function interpolateCustomParams(param) {
      let objectString = `{`;
      for (const {name, value} of param.value) {
        const valueForInterpolation = value.replace(/{{([^}]+)}}/gm, '${$1}');
        objectString += `'${name}': \`${valueForInterpolation}\`,`;
      }
      objectString += '}';
      return objectString;
    }

    let secondArg = `{`;
    secondArg += `'headers': ${headers.valueType === ParameterValueType.CUSTOM ? interpolateCustomParams(
      headers) : headers.value},`;
    secondArg += `'params': ${interpolateCustomParams(queryParams)},`;
    secondArg += `'withCredentials': ${withCredentials.value},`;
    secondArg += '}';

    let thirdArg;

    switch (method.value.toLowerCase()) {
      case 'get':
      case 'delete':
      case 'head':
        break;
      case 'post':
      case 'put':
      case 'patch':
        thirdArg        = secondArg;
        let codeContent = '';
        if (bodyType.value === BodyType.RAW) {
          codeContent = '`' + body.value.replace(new RegExp(/{{([^}]*)}}/gm), '${$1}') + '`';
        }
        if (bodyType.value === BodyType.OBJECT) {
          codeContent = body.value.replace(new RegExp(/{{([^}]*)}}/gm), '$1');
        }
        secondArg = codeContent;
        break;
      case 'options':
      default:
        break;
    }

    const code = `
    return this.http.${method.value.toLowerCase()}(${[
      JSON.stringify(firstArg), secondArg, thirdArg
    ].filter(it => !!it).join(', ')}).pipe(
        map(data => ({data, error: null})),
        catchError(error => of({data: null, error})),
    );`;

    const asts = ts.createSourceFile('', code, ts.ScriptTarget.Latest, false,
      ts.ScriptKind.TS).statements;

    // return [];
    return [
      ts.createCall(
        ts.createIdentifier('switchMap'),
        [
          ts.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword),
          ts.createTypeReferenceNode(
            ts.createIdentifier('ObservableInput'),
            [ts.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword)]
          )
        ],
        [
          ts.createArrowFunction(
            undefined,
            undefined,
            [
              ts.createParameter(
                undefined,
                undefined,
                undefined,
                ts.createObjectBindingPattern([
                  ts.createBindingElement(
                    undefined,
                    undefined,
                    ts.createIdentifier('command'),
                    undefined
                  ),
                  ts.createBindingElement(
                    undefined,
                    undefined,
                    ts.createIdentifier('params'),
                    undefined
                  ),
                  ts.createBindingElement(
                    undefined,
                    undefined,
                    ts.createIdentifier('result'),
                    undefined
                  ),
                  ts.createBindingElement(
                    undefined,
                    undefined,
                    ts.createIdentifier('workflowId'),
                    undefined
                  ),
                  ts.createBindingElement(
                    undefined,
                    undefined,
                    ts.createIdentifier('triggerEvent'),
                    undefined
                  )
                ]),
                undefined,
                ts.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword),
                undefined
              )
            ],
            undefined,
            ts.createToken(ts.SyntaxKind.EqualsGreaterThanToken),
            ts.createBlock(
              asts,
              true
            )
          )
        ]
      )
    ];
  }


  _generateCondition(stepModel) {
    let code = stepModel.params.find(
      it => it.type === 'code' && it.valueType === 'interpolatedValue')?.value || '';

    code       = code.replace(/\{\{([^\}]+?)\}\}/g, '$1');
    const asts = ts.createSourceFile('', code, ts.ScriptTarget.Latest, false,
      ts.ScriptKind.TS).statements;

    const steps                      = stepModel.params.find(
      it => it.type === 'steps' && it.valueType === 'custom')?.value || [];
    const conditionTrueSteps: any[]  = steps.find(it => it.condition === true)?.steps;
    const conditionFalseSteps: any[] = steps.find(it => it.condition === false)?.steps;

    if (!conditionTrueSteps || !conditionFalseSteps) {
      return [];
    } else {
      this.addedImports.push(
        {from: 'rxjs/operators', importClause: ['mergeMap']},
        {from: 'rxjs', importClause: ['iif']},
      );
    }

    const conditionTrueStepsName = [], conditionFalseStepsName = [], maxIdx = 0;

    conditionTrueSteps.forEach(item => {
      const stepMethodName = `${camel(item.type)}${++this.idx}`;

      conditionTrueStepsName.push(stepMethodName);
      const methodAst = this._generateActionStep(`${stepMethodName}`, item);

      this.addedMethods.push(methodAst);
    });

    conditionFalseSteps.forEach(item => {
      const stepMethodName = `${camel(item.type)}${++this.idx}`;

      conditionFalseStepsName.push(stepMethodName);
      const methodAst = this._generateActionStep(`${stepMethodName}`, item);

      this.addedMethods.push(methodAst);
    });

    return [
      ts.createCall(
        ts.createIdentifier('mergeMap'),
        [
          ts.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword),
          ts.createTypeReferenceNode(
            ts.createIdentifier('ObservableInput'),
            [ts.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword)]
          )
        ],
        [
          ts.createArrowFunction(
            undefined,
            undefined,
            [
              ts.createParameter(
                undefined,
                undefined,
                undefined,
                ts.createIdentifier('arg'),
                undefined,
                ts.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword),
                undefined
              )
            ],
            undefined,
            ts.createToken(ts.SyntaxKind.EqualsGreaterThanToken),
            ts.createBlock(
              [
                ts.createVariableStatement(
                  undefined,
                  ts.createVariableDeclarationList(
                    [
                      ts.createVariableDeclaration(
                        ts.createObjectBindingPattern([
                          ts.createBindingElement(
                            undefined,
                            undefined,
                            ts.createIdentifier('command'),
                            undefined
                          ),
                          ts.createBindingElement(
                            undefined,
                            undefined,
                            ts.createIdentifier('params'),
                            undefined
                          ),
                          ts.createBindingElement(
                            undefined,
                            undefined,
                            ts.createIdentifier('result'),
                            undefined
                          ),
                          ts.createBindingElement(
                            undefined,
                            undefined,
                            ts.createIdentifier('workflowId'),
                            undefined
                          ),
                          ts.createBindingElement(
                            undefined,
                            undefined,
                            ts.createIdentifier('triggerEvent'),
                            undefined
                          )
                        ]),
                        undefined,
                        ts.createIdentifier('arg')
                      )
                    ],
                    ts.NodeFlags.Const
                  )
                ),
                ts.createVariableStatement(
                  undefined,
                  ts.createVariableDeclarationList(
                    [
                      ts.createVariableDeclaration(
                        ts.createIdentifier('emitter'),
                        undefined,
                        ts.createCall(
                          ts.createIdentifier('of'),
                          undefined,
                          [ts.createIdentifier('arg')]
                        )
                      )
                    ],
                    ts.NodeFlags.Const
                  )
                ),
                ts.createReturn(ts.createCall(
                  ts.createIdentifier('iif'),
                  undefined,
                  [
                    ts.createArrowFunction(
                      undefined,
                      undefined,
                      [],
                      undefined,
                      ts.createToken(ts.SyntaxKind.EqualsGreaterThanToken),
                      ts.createBlock(
                        [
                          ...asts
                        ],
                        true
                      )
                    ),
                    ts.createCall(
                      ts.createPropertyAccess(
                        ts.createIdentifier('emitter'),
                        ts.createIdentifier('pipe')
                      ),
                      undefined,
                      [
                        //region
                        ...conditionTrueStepsName.map(stepName => {
                          return ts.createCall(
                            ts.createPropertyAccess(
                              ts.createThis(),
                              ts.createIdentifier(stepName)
                            ),
                            undefined,
                            [
                              ts.createStringLiteral(stepName),
                              ts.createIdentifier('ctx')
                            ]
                          );
                        }),
                        //endregion
                      ]
                    ),
                    ts.createCall(
                      ts.createPropertyAccess(
                        ts.createIdentifier('emitter'),
                        ts.createIdentifier('pipe')
                      ),
                      undefined,
                      [
                        //region
                        ...conditionFalseStepsName.map(stepName => {
                          return ts.createCall(
                            ts.createPropertyAccess(
                              ts.createThis(),
                              ts.createIdentifier(stepName)
                            ),
                            undefined,
                            [
                              ts.createStringLiteral(stepName),
                              ts.createIdentifier('ctx')
                            ]
                          );
                        }),
                        //endregion
                      ]
                    )
                  ]
                ))
              ],
              true
            )
          )
        ]
      )
    ];

  }

  _generateSpecifyActionStep(stepModel: any) {
    switch (stepModel.type) {
      case 'customCode':
        return this._generateCustomCode(stepModel.params.find(
          it => it.type === 'code' && it.valueType === 'interpolatedValue')?.value || '');
      case 'executeAction':
        return this._generateExecuteAction(stepModel);
      case 'httpRequest':
        return this._generateHttpRequest(stepModel);
      case 'condition':
        return this._generateCondition(stepModel);
      default:
        return undefined;
    }
  }

  _generateActionStep(stepName, stepModel) {

    const specifyBody = this._generateSpecifyActionStep(stepModel);

    if (!specifyBody) {
      return undefined;
    }

    return ts.createMethod(
      undefined,
      undefined,
      undefined,
      ts.createIdentifier(stepName),
      undefined,
      undefined,
      [
        ts.createParameter(
          undefined,
          undefined,
          undefined,
          ts.createIdentifier('stepName'),
          undefined,
          undefined,
          undefined
        ),
        ts.createParameter(
          undefined,
          undefined,
          undefined,
          ts.createIdentifier('ctx'),
          undefined,
          undefined,
          undefined
        )
      ],
      undefined,
      ts.createBlock(
        [
          ts.createReturn(ts.createCall(
            ts.createPropertyAccess(
              ts.createThis(),
              ts.createIdentifier('_wrapActionStep')
            ),
            undefined,
            [
              ts.createIdentifier('stepName'),
              ts.createIdentifier('ctx'),
              ts.createArrowFunction(
                undefined,
                [
                  ts.createTypeParameterDeclaration(
                    ts.createIdentifier('T'),
                    undefined,
                    undefined
                  )
                ],
                [
                  ts.createParameter(
                    undefined,
                    undefined,
                    undefined,
                    ts.createIdentifier('source'),
                    undefined,
                    ts.createTypeReferenceNode(
                      ts.createIdentifier('Observable'),
                      [
                        ts.createTypeReferenceNode(
                          ts.createIdentifier('T'),
                          undefined
                        )
                      ]
                    ),
                    undefined
                  )
                ],
                undefined,
                ts.createToken(ts.SyntaxKind.EqualsGreaterThanToken),
                ts.createBlock(
                  [
                    ts.createReturn(ts.createCall(
                      ts.createPropertyAccess(
                        ts.createIdentifier('source'),
                        ts.createIdentifier('pipe')
                      ),
                      undefined,
                      [
                        ...specifyBody
                      ]
                    ))
                  ],
                  true
                )
              )
            ]
          ))
        ],
        true
      )
    );
  }

  _generateActionSteps(): { ast: any, stepMethodName: string }[] {
    const {workflowActionModel} = this.ctx;

    const results = [];

    for (; this.idx < workflowActionModel.steps.length; this.idx++) {
      const item           = workflowActionModel.steps[this.idx];
      const stepMethodName = `${camel(item.type)}${this.idx}`;
      const ast            = this._generateActionStep(stepMethodName, item);
      if (ast !== undefined) {
        results.push(
          {ast, stepMethodName}
        );
      }
    }
    return results;
  }

  protected _preGenerate() {
    const {
            slugProjectName,
            pascalProjectName,
            pascalWorkflowActionModelName,
            slugWorkflowActionModelName
          } = this.ctx;
    this.addedImports.push(
      {
        from: `../events/${slugProjectName}.events`,
        importClause: [`${pascalProjectName}StartEvent`, `${pascalProjectName}SuccessEvent`]
      },
      {
        from: `./${slugWorkflowActionModelName}-action.command`,
        importClause: [`${pascalWorkflowActionModelName}ActionCommand`]
      }
    );
  }

  generate() {
    this._preGenerate();

    const {pascalWorkflowActionModelName, pascalProjectName} = this.ctx;

    const actionSteps = this._generateActionSteps();

    const actionStepsAsts = actionSteps.map(it => it.ast);
    const actionStepNames = actionSteps.map(it => it.stepMethodName);


    const asts = [

      ts.createClassDeclaration(
        [
          ts.createDecorator(ts.createCall(
            ts.createIdentifier('CommandHandler'),
            undefined,
            [ts.createIdentifier(`${pascalWorkflowActionModelName}ActionCommand`)]
          ))
        ],
        [ts.createModifier(ts.SyntaxKind.ExportKeyword)],
        ts.createIdentifier(`${pascalWorkflowActionModelName}ActionCommandHandlerService`),
        undefined,
        [
          ts.createHeritageClause(
            ts.SyntaxKind.ExtendsKeyword,
            [
              ts.createExpressionWithTypeArguments(
                undefined,
                ts.createIdentifier('CommonCommandHandler')
              )
            ]
          ),
          ts.createHeritageClause(
            ts.SyntaxKind.ImplementsKeyword,
            [
              ts.createExpressionWithTypeArguments(
                [
                  ts.createTypeReferenceNode(
                    ts.createIdentifier(`${pascalWorkflowActionModelName}ActionCommand`),
                    undefined
                  )
                ],
                ts.createIdentifier('ICommandHandler')
              )
            ]
          )
        ],
        [
          ts.createConstructor(
            undefined,
            undefined,
            [
              ts.createParameter(
                undefined,
                [ts.createModifier(ts.SyntaxKind.ProtectedKeyword)],
                undefined,
                ts.createIdentifier('eventBus'),
                undefined,
                ts.createTypeReferenceNode(
                  ts.createIdentifier('EventBus'),
                  undefined
                ),
                undefined
              ),
              ts.createParameter(
                undefined,
                [ts.createModifier(ts.SyntaxKind.ProtectedKeyword)],
                undefined,
                ts.createIdentifier('killActionCommandHandlerService'),
                undefined,
                ts.createTypeReferenceNode(
                  ts.createIdentifier('KillActionCommandHandlerService'),
                  undefined
                ),
                undefined
              ),
              ts.createParameter(
                undefined,
                [ts.createModifier(ts.SyntaxKind.PrivateKeyword)],
                undefined,
                ts.createIdentifier('moduleRef'),
                undefined,
                ts.createTypeReferenceNode(
                  ts.createIdentifier('ModuleRef'),
                  undefined
                ),
                undefined
              ),
              ts.createParameter(
                undefined,
                [ts.createModifier(ts.SyntaxKind.PrivateKeyword)],
                undefined,
                ts.createIdentifier('http'),
                undefined,
                ts.createTypeReferenceNode(
                  ts.createIdentifier('HttpService'),
                  undefined
                ),
                undefined
              ),
              ...this.addedConstructors
            ],
            ts.createBlock(
              [
                ts.createExpressionStatement(ts.createCall(
                  ts.createSuper(),
                  undefined,
                  [ts.createIdentifier('eventBus')]
                ))
              ],
              true
            )
          ),
          ...actionStepsAsts,
          ...this.addedMethods,
          ts.createMethod(
            undefined,
            undefined,
            undefined,
            ts.createIdentifier('execute'),
            undefined,
            undefined,
            [
              ts.createParameter(
                undefined,
                undefined,
                undefined,
                ts.createIdentifier('command'),
                undefined,
                ts.createTypeReferenceNode(
                  ts.createIdentifier(`${pascalWorkflowActionModelName}ActionCommand`),
                  undefined
                ),
                undefined
              )
            ],
            ts.createTypeReferenceNode(
              ts.createIdentifier('Promise'),
              [ts.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword)]
            ),
            ts.createBlock(
              [
                ts.createVariableStatement(
                  undefined,
                  ts.createVariableDeclarationList(
                    [
                      ts.createVariableDeclaration(
                        ts.createIdentifier('ctx'),
                        undefined,
                        ts.createObjectLiteral(
                          [
                            ts.createPropertyAssignment(
                              ts.createIdentifier('workflowId'),
                              ts.createPropertyAccess(
                                ts.createIdentifier('command'),
                                ts.createIdentifier('workflowId')
                              )
                            ),
                            ts.createPropertyAssignment(
                              ts.createIdentifier('steps'),
                              ts.createArrayLiteral(
                                [],
                                false
                              )
                            ),
                            ts.createPropertyAssignment(
                              ts.createIdentifier('params'),
                              ts.createPropertyAccess(
                                ts.createIdentifier('command'),
                                ts.createIdentifier('params')
                              )
                            ),
                            ts.createPropertyAssignment(
                              ts.createIdentifier('triggerEvent'),
                              ts.createPropertyAccess(
                                ts.createIdentifier('command'),
                                ts.createIdentifier('triggerEvent')
                              )
                            )
                          ],
                          true
                        )
                      )
                    ],
                    ts.NodeFlags.Const
                  )
                ),
                ts.createReturn(ts.createCall(
                  ts.createPropertyAccess(
                    ts.createCall(
                      ts.createPropertyAccess(
                        ts.createCall(
                          ts.createIdentifier('of'),
                          undefined,
                          [ts.createIdentifier('command')]
                        ),
                        ts.createIdentifier('pipe')
                      ),
                      undefined,
                      [
                        ts.createCall(
                          ts.createIdentifier('takeUntil'),
                          undefined,
                          [
                            ts.createCall(
                              ts.createPropertyAccess(
                                ts.createPropertyAccess(
                                  ts.createPropertyAccess(
                                    ts.createThis(),
                                    ts.createIdentifier('killActionCommandHandlerService')
                                  ),
                                  ts.createIdentifier('kill$')
                                ),
                                ts.createIdentifier('pipe')
                              ),
                              undefined,
                              [
                                ts.createCall(
                                  ts.createIdentifier('filter'),
                                  undefined,
                                  [
                                    ts.createArrowFunction(
                                      undefined,
                                      undefined,
                                      [
                                        ts.createParameter(
                                          undefined,
                                          undefined,
                                          undefined,
                                          ts.createIdentifier('workflowId'),
                                          undefined,
                                          undefined,
                                          undefined
                                        )
                                      ],
                                      undefined,
                                      ts.createToken(ts.SyntaxKind.EqualsGreaterThanToken),
                                      ts.createBinary(
                                        ts.createPropertyAccess(
                                          ts.createIdentifier('command'),
                                          ts.createIdentifier('workflowId')
                                        ),
                                        ts.createToken(ts.SyntaxKind.EqualsEqualsEqualsToken),
                                        ts.createIdentifier('workflowId')
                                      )
                                    )
                                  ]
                                )
                              ]
                            )
                          ]
                        ),
                        ts.createCall(
                          ts.createIdentifier('tap'),
                          undefined,
                          [
                            ts.createArrowFunction(
                              undefined,
                              undefined,
                              [],
                              undefined,
                              ts.createToken(ts.SyntaxKind.EqualsGreaterThanToken),
                              ts.createBlock(
                                [
                                  ts.createExpressionStatement(ts.createCall(
                                    ts.createPropertyAccess(
                                      ts.createPropertyAccess(
                                        ts.createThis(),
                                        ts.createIdentifier('eventBus')
                                      ),
                                      ts.createIdentifier('publish')
                                    ),
                                    undefined,
                                    [
                                      ts.createNew(
                                        ts.createIdentifier(`${pascalProjectName}StartEvent`),
                                        undefined,
                                        [
                                          ts.createPropertyAccess(
                                            ts.createIdentifier('command'),
                                            ts.createIdentifier('workflowId')
                                          ),
                                          ts.createPropertyAccess(
                                            ts.createIdentifier('command'),
                                            ts.createIdentifier('params')
                                          )
                                        ]
                                      )
                                    ]
                                  ))
                                ],
                                true
                              )
                            )
                          ]
                        ),
                        ts.createCall(
                          ts.createIdentifier('map'),
                          undefined,
                          [
                            ts.createArrowFunction(
                              undefined,
                              undefined,
                              [
                                ts.createParameter(
                                  undefined,
                                  undefined,
                                  undefined,
                                  ts.createIdentifier('actionCommand'),
                                  undefined,
                                  ts.createTypeReferenceNode(
                                    ts.createIdentifier(
                                      `${pascalWorkflowActionModelName}ActionCommand`),
                                    undefined
                                  ),
                                  undefined
                                )
                              ],
                              undefined,
                              ts.createToken(ts.SyntaxKind.EqualsGreaterThanToken),
                              ts.createBlock(
                                [
                                  ts.createReturn(ts.createObjectLiteral(
                                    [
                                      ts.createPropertyAssignment(
                                        ts.createIdentifier('command'),
                                        ts.createIdentifier('actionCommand')
                                      ),
                                      ts.createPropertyAssignment(
                                        ts.createIdentifier('params'),
                                        ts.createPropertyAccess(
                                          ts.createIdentifier('command'),
                                          ts.createIdentifier('params')
                                        )
                                      ),
                                      ts.createPropertyAssignment(
                                        ts.createIdentifier('workflowId'),
                                        ts.createPropertyAccess(
                                          ts.createIdentifier('command'),
                                          ts.createIdentifier('workflowId')
                                        )
                                      ),
                                      ts.createPropertyAssignment(
                                        ts.createIdentifier('triggerEvent'),
                                        ts.createPropertyAccess(
                                          ts.createIdentifier('command'),
                                          ts.createIdentifier('triggerEvent')
                                        )
                                      )
                                    ],
                                    false
                                  ))
                                ],
                                true
                              )
                            )
                          ]
                        ),
                        //region
                        ...actionStepNames.map(stepName => {
                          return ts.createCall(
                            ts.createPropertyAccess(
                              ts.createThis(),
                              ts.createIdentifier(stepName)
                            ),
                            undefined,
                            [
                              ts.createStringLiteral(stepName),
                              ts.createIdentifier('ctx')
                            ]
                          );
                        }),
                        //endregion

                        ts.createCall(
                          ts.createIdentifier('tap'),
                          undefined,
                          [
                            ts.createArrowFunction(
                              undefined,
                              undefined,
                              [
                                ts.createParameter(
                                  undefined,
                                  undefined,
                                  undefined,
                                  ts.createIdentifier('result'),
                                  undefined,
                                  undefined,
                                  undefined
                                )
                              ],
                              undefined,
                              ts.createToken(ts.SyntaxKind.EqualsGreaterThanToken),
                              ts.createBlock(
                                [
                                  ts.createExpressionStatement(ts.createCall(
                                    ts.createPropertyAccess(
                                      ts.createPropertyAccess(
                                        ts.createThis(),
                                        ts.createIdentifier('eventBus')
                                      ),
                                      ts.createIdentifier('publish')
                                    ),
                                    undefined,
                                    [
                                      ts.createNew(
                                        ts.createIdentifier(`${pascalProjectName}SuccessEvent`),
                                        undefined,
                                        [
                                          ts.createPropertyAccess(
                                            ts.createIdentifier('command'),
                                            ts.createIdentifier('workflowId')
                                          ),
                                          ts.createPropertyAccess(
                                            ts.createIdentifier('command'),
                                            ts.createIdentifier('params')
                                          ),
                                          ts.createIdentifier('result')
                                        ]
                                      )
                                    ]
                                  ))
                                ],
                                true
                              )
                            )
                          ]
                        ),
                        ts.createCall(
                          ts.createIdentifier('catchError'),
                          undefined,
                          [
                            ts.createArrowFunction(
                              undefined,
                              undefined,
                              [
                                ts.createParameter(
                                  undefined,
                                  undefined,
                                  undefined,
                                  ts.createIdentifier('err'),
                                  undefined,
                                  undefined,
                                  undefined
                                )
                              ],
                              undefined,
                              ts.createToken(ts.SyntaxKind.EqualsGreaterThanToken),
                              ts.createIdentifier('EMPTY')
                            )
                          ]
                        )
                      ]
                    ),
                    ts.createIdentifier('toPromise')
                  ),
                  undefined,
                  []
                ))
              ],
              true
            )
          )
        ]
      )
    ];

    return [
      ...this._normalizeImports().map(it => {
        return generateImportDeclaration(it.from, it.importClause);
      }),
      ...asts
    ];
  }
}
