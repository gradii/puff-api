import { Generate } from '../generate';
import * as ts from 'typescript';
import { generateImportDeclaration } from '../../common/helper';

export class GenerateKillActionCommandHandlerService extends Generate {

  filename = 'app/workflow/kill-action-command-handler.service.ts';

  imports = [
    { from: '@nestjs/cqrs', importClause: ['CommandHandler'] },
    { from: './kill-action.command', importClause: ['KillActionCommand'] },
    { from: 'rxjs', importClause: ['Subject'] },
    { from: '@nestjs/common', importClause: ['OnModuleDestroy'] }
  ];

  constructor(public ctx) {
    super();
  }

  generate() {
    return [
      ...this._normalizeImports().map(it => {
        return generateImportDeclaration(it.from, it.importClause);
      }),
      ts.createClassDeclaration(
        [ts.createDecorator(ts.createCall(
          ts.createIdentifier('CommandHandler'),
          undefined,
          [ts.createIdentifier('KillActionCommand')]
        ))],
        [ts.createModifier(ts.SyntaxKind.ExportKeyword)],
        ts.createIdentifier('KillActionCommandHandlerService'),
        undefined,
        [ts.createHeritageClause(
          ts.SyntaxKind.ImplementsKeyword,
          [ts.createExpressionWithTypeArguments(
            undefined,
            ts.createIdentifier('OnModuleDestroy')
          )]
        )],
        [
          ts.createProperty(
            undefined,
            undefined,
            ts.createIdentifier('kill$'),
            undefined,
            undefined,
            ts.createNew(
              ts.createIdentifier('Subject'),
              [ts.createKeywordTypeNode(ts.SyntaxKind.StringKeyword)],
              []
            )
          ),
          ts.createConstructor(
            undefined,
            undefined,
            [],
            ts.createBlock(
              [],
              true
            )
          ),
          ts.createMethod(
            undefined,
            undefined,
            undefined,
            ts.createIdentifier('execute'),
            undefined,
            undefined,
            [ts.createParameter(
              undefined,
              undefined,
              undefined,
              ts.createIdentifier('command'),
              undefined,
              ts.createTypeReferenceNode(
                ts.createIdentifier('KillActionCommand'),
                undefined
              ),
              undefined
            )],
            ts.createTypeReferenceNode(
              ts.createIdentifier('Promise'),
              [ts.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword)]
            ),
            ts.createBlock(
              [
                ts.createExpressionStatement(ts.createCall(
                  ts.createPropertyAccess(
                    ts.createPropertyAccess(
                      ts.createThis(),
                      ts.createIdentifier('kill$')
                    ),
                    ts.createIdentifier('next')
                  ),
                  undefined,
                  [ts.createPropertyAccess(
                    ts.createIdentifier('command'),
                    ts.createIdentifier('workflowId')
                  )]
                )),
                ts.createReturn(ts.createCall(
                  ts.createPropertyAccess(
                    ts.createIdentifier('Promise'),
                    ts.createIdentifier('resolve')
                  ),
                  undefined,
                  []
                ))
              ],
              true
            )
          ),
          ts.createMethod(
            undefined,
            undefined,
            undefined,
            ts.createIdentifier('onModuleDestroy'),
            undefined,
            undefined,
            [],
            undefined,
            ts.createBlock(
              [ts.createExpressionStatement(ts.createCall(
                ts.createPropertyAccess(
                  ts.createPropertyAccess(
                    ts.createThis(),
                    ts.createIdentifier('kill$')
                  ),
                  ts.createIdentifier('complete')
                ),
                undefined,
                []
              ))],
              true
            )
          )
        ]
      )
    ];

  }
}
