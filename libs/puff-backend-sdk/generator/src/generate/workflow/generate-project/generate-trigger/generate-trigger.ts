/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { pascalCase, slugCase } from '@gradii/nanofn';
import ts from 'typescript';
import { Generate } from '../../../generate';

const { factory, SyntaxKind } = ts;

export class GenerateTrigger extends Generate {

  get filename() {
    const {slugProjectName, triggerName, triggerType} = this.ctx;
    return `app/workflow/${slugProjectName}/triggers/${slugCase(triggerName)}-${slugCase(
      triggerType)}-trigger.service.ts`;
  }

  constructor(public ctx) {
    super();
  }

  protected _preGenerate() {
    super._preGenerate();
  }

  generate() {
    // super.generate();
    this._preGenerate();
    const {
            slugProjectName,
            pascalProjectName,
            triggerName,
            triggerType,
            triggerCronValue
          } = this.ctx;


    return [
      factory.createImportDeclaration(
        undefined,
        undefined,
        factory.createImportClause(
          false,
          undefined,
          factory.createNamedImports([
            factory.createImportSpecifier(
              false,
              undefined,
              factory.createIdentifier('Injectable')
            ),
            factory.createImportSpecifier(
              false,
              undefined,
              factory.createIdentifier('Logger')
            )
          ]),
        ),
        factory.createStringLiteral('@nestjs/common')
      ),
      factory.createImportDeclaration(
        undefined,
        undefined,
        factory.createImportClause(
          false,
          undefined,
          factory.createNamedImports([
            factory.createImportSpecifier(
              false,
              undefined,
              factory.createIdentifier('Cron')
            ),
            factory.createImportSpecifier(
              false,
              undefined,
              factory.createIdentifier('CronExpression')
            )
          ]),
        ),
        factory.createStringLiteral('@nestjs/schedule')
      ),
      factory.createImportDeclaration(
        undefined,
        undefined,
        factory.createImportClause(
          false,
          undefined,
          factory.createNamedImports([
            factory.createImportSpecifier(
              false,
              undefined,
              factory.createIdentifier('EventBus')
            )
          ])
        ),
        factory.createStringLiteral('@nestjs/cqrs')
      ),
      factory.createImportDeclaration(
        undefined,
        undefined,
        factory.createImportClause(
          false,
          undefined,
          factory.createNamedImports([
            factory.createImportSpecifier(
              false,
              undefined,
              factory.createIdentifier(`${pascalProjectName}Event`)
            )
          ]),
        ),
        factory.createStringLiteral(`../events/${slugProjectName}.events`)
      ),
      factory.createClassDeclaration(
        [
          factory.createDecorator(factory.createCallExpression(
            factory.createIdentifier('Injectable'),
            undefined,
            []
          ))
        ],
        [factory.createModifier(SyntaxKind.ExportKeyword)],
        factory.createIdentifier(
          `${pascalCase(triggerName)}${pascalCase(triggerType)}TriggerService`),
        undefined,
        undefined,
        [
          factory.createPropertyDeclaration(
            undefined,
            [
              factory.createModifier(SyntaxKind.PrivateKeyword),
              factory.createModifier(SyntaxKind.ReadonlyKeyword)
            ],
            factory.createIdentifier('logger'),
            undefined,
            undefined,
            factory.createNewExpression(
              factory.createIdentifier('Logger'),
              undefined,
              [
                factory.createPropertyAccessExpression(
                  factory.createIdentifier(
                    `${pascalCase(triggerName)}${pascalCase(triggerType)}TriggerService`),
                  factory.createIdentifier('name')
                )
              ]
            )
          ),
          factory.createConstructorDeclaration(
            undefined,
            undefined,
            [
              factory.createParameterDeclaration(
                undefined,
                [
                  factory.createModifier(SyntaxKind.PrivateKeyword),
                  factory.createModifier(SyntaxKind.ReadonlyKeyword)
                ],
                undefined,
                factory.createIdentifier('eventBus'),
                undefined,
                factory.createTypeReferenceNode(
                  factory.createIdentifier('EventBus'),
                  undefined
                ),
                undefined
              )
            ],
            factory.createBlock(
              [],
              true
            )
          ),
          factory.createMethodDeclaration(
            [
              factory.createDecorator(factory.createCallExpression(
                factory.createIdentifier('Cron'),
                undefined,
                [
                  factory.createStringLiteral(triggerCronValue || ''),
                  factory.createObjectLiteralExpression(
                    [
                      factory.createPropertyAssignment(
                        factory.createIdentifier('name'),
                        factory.createStringLiteral('notifications')
                      )
                    ],
                    true
                  )
                ]
              ))
            ],
            undefined,
            undefined,
            factory.createIdentifier('handleCron'),
            undefined,
            undefined,
            [],
            undefined,
            factory.createBlock(
              [
                factory.createExpressionStatement(factory.createCallExpression(
                  factory.createPropertyAccessExpression(
                    factory.createPropertyAccessExpression(
                      factory.createThis(),
                      factory.createIdentifier('eventBus')
                    ),
                    factory.createIdentifier('publish')
                  ),
                  undefined,
                  [
                    factory.createNewExpression(
                      factory.createIdentifier(`${pascalProjectName}Event`),
                      undefined,
                      [
                        factory.createObjectLiteralExpression(
                          [
                            // ts.createPropertyAssignment(
                            //   ts.createIdentifier('key'),
                            //   ts.createStringLiteral('heroid001')
                            // ),
                            // ts.createPropertyAssignment(
                            //   ts.createIdentifier('data'),
                            //   ts.createStringLiteral('item001')
                            // )
                          ],
                          true
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
      )
    ];

  }

  protected _postGenerate() {
    super._postGenerate();
  }

}
