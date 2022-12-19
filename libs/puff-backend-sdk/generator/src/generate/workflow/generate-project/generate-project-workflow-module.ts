/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { camelCase as camel, pascalCase as pascal, slugCase as slug } from '@gradii/nanofn';
import * as ts from 'typescript';
import { generateImportDeclaration } from '../../../common/helper';
import { Generate } from '../../generate';
import { GenerateActionCommand } from './generate-action/generate-action-command';
import { GenerateActionCommandHandler } from './generate-action/generate-action-command-handler';
import { GenerateCommonCommandHandler } from './generate-action/generate-common-command-handler';
import { GenerateEvent } from './generate-event/generate-event';
import { GenerateSaga } from './generate-saga/generate-saga';
import { GenerateTrigger } from './generate-trigger/generate-trigger';


export class GenerateProjectWorkflowModule extends Generate {
  private projectName: string;
  private slugProjectName: string;
  private pascalProjectName: string;

  get filename() {
    const {projectName} = this.ctx;
    return `app/workflow/${slug(projectName)}/${slug(projectName)}-workflow.module.ts`;
  };

  imports = [
    {from: '@nestjs/common', importClause: ['Module']},
    {
      from        : '../kill-action-command-handler.service',
      importClause: ['KillActionCommandHandlerService']
    },
    // { from: './actions/load-tasks-action-command-handler.service', importClause: ['LoadTasksActionCommandHandlerService'] },
    {from: '@nestjs/cqrs', importClause: ['CqrsModule']},
    {from: '@nestjs/common', importClause: ['HttpModule']}
    // { from: './actions/sort-backlog-command-handler.service', importClause: ['SortBacklogCommandHandlerService'] }
  ];

  addedImports = [];


  constructor(public ctx: {
    workflowModel: any,
    projectName: string,
    [key: string]: any,
  }) {
    super();

    this.projectName       = this.ctx.projectName;
    this.slugProjectName   = slug(this.projectName);
    this.pascalProjectName = pascal(this.projectName);
  }

  protected _preGenerate() {
    //generate action
    const workflowActionDefault = {
      slugProjectName  : this.slugProjectName,
      pascalProjectName: this.pascalProjectName
    };

    for (let model of this.ctx.workflowModel) {
      const actionCtx = {
        ...this.ctx,
        ...workflowActionDefault,
        slugWorkflowActionModelName  : slug(model.name),
        pascalWorkflowActionModelName: pascal(model.name),
        camelWorkflowActionModelName : camel(model.name),
        workflowActionModel          : model
      };

      const generateAction = new GenerateActionCommand(actionCtx);

      const actionAsts = generateAction.generate();
      generateAction.outputFile(actionAsts);

      const generateCommandHandler = new GenerateActionCommandHandler(actionCtx);

      const commandHandlerAsts = generateCommandHandler.generate();
      generateCommandHandler.outputFile(commandHandlerAsts);

      this.addedImports.push(
        {
          from        : `./actions/${actionCtx.slugWorkflowActionModelName}-command-handler.service`,
          importClause: [`${actionCtx.pascalWorkflowActionModelName}ActionCommandHandlerService`]
        }
      );
    }

    const {trigger} = this.ctx;

    const workflowActionModelCtx = {
      ...this.ctx,
      ...workflowActionDefault
    };

    //generate common handler
    const generateHandler = new GenerateCommonCommandHandler(workflowActionModelCtx);
    generateHandler.outputFile(generateHandler.generate());


    if (trigger) {
      const {
              properties: {name: triggerName, type: triggerType, cron: triggerCronValue},
              actions   : {run: triggerCronRunners}
            } = trigger;

      if (triggerCronRunners && triggerCronRunners.length > 0) {
        const runner          = triggerCronRunners[0];
        const {workflowModel} = this.ctx;
        const workflowAction  = workflowModel.find(it => it.id === runner.action);

        if (workflowAction) {
          //generate sagas
          const generateSaga = new GenerateSaga({
            ...workflowActionModelCtx,
            workflowAction,
            actionName      : workflowAction.name,
            slugActionName  : slug(workflowAction.name),
            pascalActionName: pascal(workflowAction.name)
          });
          generateSaga.outputFile(generateSaga.generate());
        }

      }

      //generate event
      const generateEvent = new GenerateEvent(
        {...workflowActionModelCtx, triggerName, triggerType, triggerCronValue});
      generateEvent.outputFile(generateEvent.generage());

      //generate triggers

      const generateTrigger = new GenerateTrigger(
        {...workflowActionModelCtx, triggerName, triggerType, triggerCronValue});
      generateTrigger.outputFile(generateTrigger.generate());

      this.addedImports.push(
        {
          from: `./triggers/${slug(triggerName)}-${slug(triggerType)}-trigger.service`,
          importClause: [`${pascal(triggerName)}${pascal(triggerType)}TriggerService`]
        }
      );
    }

    //added imports
    this.addedImports.push(
      {
        from: `./sagas/${this.slugProjectName}-saga.service`,
        importClause: [`${this.pascalProjectName}SagaService`]
      }
    );
  }

  generate() {
    this._preGenerate();


    const {trigger} = this.ctx;

    if (trigger) {

    }


    const asts = [
      ts.createClassDeclaration(
        [
          ts.createDecorator(ts.createCall(
            ts.createIdentifier('Module'),
            undefined,
            [
              ts.createObjectLiteral(
                [
                  ts.createPropertyAssignment(
                    ts.createIdentifier('imports'),
                    ts.createArrayLiteral(
                      [
                        ts.createIdentifier('CqrsModule'),
                        ts.createIdentifier('HttpModule')
                      ],
                      true
                    )
                  ),
                  ts.createPropertyAssignment(
                    ts.createIdentifier('controllers'),
                    ts.createArrayLiteral(
                      [],
                      false
                    )
                  ),
                  ts.createPropertyAssignment(
                    ts.createIdentifier('providers'),
                    ts.createArrayLiteral(
                      [
                        ts.createIdentifier(`${this.pascalProjectName}SagaService`),
                        ...(() => {
                          if (trigger) {
                            const {
                                    properties: {
                                      name: triggerName,
                                      type: triggerType,
                                      cron: triggerCronValue
                                    },
                                    actions   : {run: triggerCronRunners}
                                  } = trigger;
                            return [
                              ts.createIdentifier(
                                `${pascal(triggerName)}${pascal(triggerType)}TriggerService`)
                            ];
                          }
                          return [];
                        })(),
                        ...(() => {
                          const rst = [];
                          for (let model of this.ctx.workflowModel) {
                            const {
                                    camelWorkflowActionModelName: camelWorkflowActionModelName,
                                    pascalWorkflowActionModelName,
                                    slugWorkflowActionModelName,
                                    workflowActionModel
                                  } = {
                              // ...workflowActionDefault,
                              slugWorkflowActionModelName  : slug(model.name),
                              pascalWorkflowActionModelName: pascal(model.name),
                              camelWorkflowActionModelName : camel(model.name),
                              workflowActionModel          : model
                            };
                            rst.push(ts.createIdentifier(
                              `${pascalWorkflowActionModelName}ActionCommandHandlerService`));
                          }
                          return rst;
                        })(),
                        ts.createIdentifier('KillActionCommandHandlerService')
                      ],
                      true
                    )
                  )
                ],
                true
              )
            ]
          ))
        ],
        [ts.createModifier(ts.SyntaxKind.ExportKeyword)],
        ts.createIdentifier(`${this.pascalProjectName}WorkflowModule`),
        undefined,
        undefined,
        []
      )
    ];

    const resultAsts = [
      ...this._normalizeImports().map(it => {
        return generateImportDeclaration(it.from, it.importClause);
      }),
      ...asts
    ];

    this._postGenerate();
    return resultAsts;
  }

  // protected _postGenerate() {
  //   super._postGenerate();
  // }
}
