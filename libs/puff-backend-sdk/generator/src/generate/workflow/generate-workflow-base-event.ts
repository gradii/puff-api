import { Generate } from '../generate';
import * as ts from 'typescript';

export class GenerateWorkflowBaseEvent extends Generate {

  filename = 'app/workflow/workflow-base.event.ts'

  constructor(public ctx) {
    super();
  }

  generate() {
    const ast = [
      ts.createImportDeclaration(
        undefined,
        undefined,
        ts.createImportClause(
          undefined,
          ts.createNamedImports([ts.createImportSpecifier(
            false,
            undefined,
            ts.createIdentifier('IEvent')
          )]),
          false
        ),
        ts.createStringLiteral('@nestjs/cqrs')
      ),
      ts.createClassDeclaration(
        undefined,
        [ts.createModifier(ts.SyntaxKind.ExportKeyword)],
        ts.createIdentifier('WorkflowBaseEvent'),
        undefined,
        [ts.createHeritageClause(
          ts.SyntaxKind.ImplementsKeyword,
          [ts.createExpressionWithTypeArguments(
            undefined,
            ts.createIdentifier('IEvent')
          )]
        )],
        [ts.createConstructor(
          undefined,
          undefined,
          [ts.createParameter(
            undefined,
            [
              ts.createModifier(ts.SyntaxKind.PublicKeyword),
              ts.createModifier(ts.SyntaxKind.ReadonlyKeyword)
            ],
            undefined,
            ts.createIdentifier('workflowId'),
            undefined,
            ts.createKeywordTypeNode(ts.SyntaxKind.StringKeyword),
            undefined
          )],
          ts.createBlock(
            [],
            true
          )
        )]
      ),
      ts.createClassDeclaration(
        undefined,
        [ts.createModifier(ts.SyntaxKind.ExportKeyword)],
        ts.createIdentifier('WorkflowStartEvent'),
        undefined,
        [ts.createHeritageClause(
          ts.SyntaxKind.ExtendsKeyword,
          [ts.createExpressionWithTypeArguments(
            undefined,
            ts.createIdentifier('WorkflowBaseEvent')
          )]
        )],
        [ts.createConstructor(
          undefined,
          undefined,
          [ts.createParameter(
            undefined,
            [
              ts.createModifier(ts.SyntaxKind.PublicKeyword),
              ts.createModifier(ts.SyntaxKind.ReadonlyKeyword)
            ],
            undefined,
            ts.createIdentifier('workflowId'),
            undefined,
            ts.createKeywordTypeNode(ts.SyntaxKind.StringKeyword),
            undefined
          )],
          ts.createBlock(
            [ts.createExpressionStatement(ts.createCall(
              ts.createSuper(),
              undefined,
              [ts.createIdentifier('workflowId')]
            ))],
            true
          )
        )]
      ),
      ts.createClassDeclaration(
        undefined,
        [ts.createModifier(ts.SyntaxKind.ExportKeyword)],
        ts.createIdentifier('WorkflowRunningEvent'),
        undefined,
        [ts.createHeritageClause(
          ts.SyntaxKind.ExtendsKeyword,
          [ts.createExpressionWithTypeArguments(
            undefined,
            ts.createIdentifier('WorkflowBaseEvent')
          )]
        )],
        [ts.createConstructor(
          undefined,
          undefined,
          [
            ts.createParameter(
              undefined,
              [
                ts.createModifier(ts.SyntaxKind.PublicKeyword),
                ts.createModifier(ts.SyntaxKind.ReadonlyKeyword)
              ],
              undefined,
              ts.createIdentifier('workflowId'),
              undefined,
              ts.createKeywordTypeNode(ts.SyntaxKind.StringKeyword),
              undefined
            ),
            ts.createParameter(
              undefined,
              [ts.createModifier(ts.SyntaxKind.PublicKeyword)],
              undefined,
              ts.createIdentifier('status'),
              undefined,
              ts.createKeywordTypeNode(ts.SyntaxKind.StringKeyword),
              undefined
            ),
            ts.createParameter(
              undefined,
              [ts.createModifier(ts.SyntaxKind.PublicKeyword)],
              undefined,
              ts.createIdentifier('steps'),
              undefined,
              undefined,
              ts.createArrayLiteral(
                [],
                false
              )
            )
          ],
          ts.createBlock(
            [ts.createExpressionStatement(ts.createCall(
              ts.createSuper(),
              undefined,
              [ts.createIdentifier('workflowId')]
            ))],
            true
          )
        )]
      ),
      ts.createClassDeclaration(
        undefined,
        [ts.createModifier(ts.SyntaxKind.ExportKeyword)],
        ts.createIdentifier('WorkflowEndEvent'),
        undefined,
        [ts.createHeritageClause(
          ts.SyntaxKind.ExtendsKeyword,
          [ts.createExpressionWithTypeArguments(
            undefined,
            ts.createIdentifier('WorkflowBaseEvent')
          )]
        )],
        [ts.createConstructor(
          undefined,
          undefined,
          [ts.createParameter(
            undefined,
            [
              ts.createModifier(ts.SyntaxKind.PublicKeyword),
              ts.createModifier(ts.SyntaxKind.ReadonlyKeyword)
            ],
            undefined,
            ts.createIdentifier('workflowId'),
            undefined,
            ts.createKeywordTypeNode(ts.SyntaxKind.StringKeyword),
            undefined
          )],
          ts.createBlock(
            [ts.createExpressionStatement(ts.createCall(
              ts.createSuper(),
              undefined,
              [ts.createIdentifier('workflowId')]
            ))],
            true
          )
        )]
      ),
      ts.createClassDeclaration(
        undefined,
        [ts.createModifier(ts.SyntaxKind.ExportKeyword)],
        ts.createIdentifier('WorkflowCancelEvent'),
        undefined,
        [ts.createHeritageClause(
          ts.SyntaxKind.ExtendsKeyword,
          [ts.createExpressionWithTypeArguments(
            undefined,
            ts.createIdentifier('WorkflowEndEvent')
          )]
        )],
        [ts.createConstructor(
          undefined,
          undefined,
          [ts.createParameter(
            undefined,
            [
              ts.createModifier(ts.SyntaxKind.PublicKeyword),
              ts.createModifier(ts.SyntaxKind.ReadonlyKeyword)
            ],
            undefined,
            ts.createIdentifier('workflowId'),
            undefined,
            ts.createKeywordTypeNode(ts.SyntaxKind.StringKeyword),
            undefined
          )],
          ts.createBlock(
            [ts.createExpressionStatement(ts.createCall(
              ts.createSuper(),
              undefined,
              [ts.createIdentifier('workflowId')]
            ))],
            true
          )
        )]
      ),
      ts.createClassDeclaration(
        undefined,
        [ts.createModifier(ts.SyntaxKind.ExportKeyword)],
        ts.createIdentifier('WorkflowInQueueEvent'),
        undefined,
        [ts.createHeritageClause(
          ts.SyntaxKind.ExtendsKeyword,
          [ts.createExpressionWithTypeArguments(
            undefined,
            ts.createIdentifier('WorkflowBaseEvent')
          )]
        )],
        [ts.createConstructor(
          undefined,
          undefined,
          [ts.createParameter(
            undefined,
            [
              ts.createModifier(ts.SyntaxKind.PublicKeyword),
              ts.createModifier(ts.SyntaxKind.ReadonlyKeyword)
            ],
            undefined,
            ts.createIdentifier('workflowId'),
            undefined,
            ts.createKeywordTypeNode(ts.SyntaxKind.StringKeyword),
            undefined
          )],
          ts.createBlock(
            [ts.createExpressionStatement(ts.createCall(
              ts.createSuper(),
              undefined,
              [ts.createIdentifier('workflowId')]
            ))],
            true
          )
        )]
      ),
      ts.createClassDeclaration(
        undefined,
        [ts.createModifier(ts.SyntaxKind.ExportKeyword)],
        ts.createIdentifier('WorkflowOutQueueEvent'),
        undefined,
        [ts.createHeritageClause(
          ts.SyntaxKind.ExtendsKeyword,
          [ts.createExpressionWithTypeArguments(
            undefined,
            ts.createIdentifier('WorkflowBaseEvent')
          )]
        )],
        [ts.createConstructor(
          undefined,
          undefined,
          [ts.createParameter(
            undefined,
            [
              ts.createModifier(ts.SyntaxKind.PublicKeyword),
              ts.createModifier(ts.SyntaxKind.ReadonlyKeyword)
            ],
            undefined,
            ts.createIdentifier('workflowId'),
            undefined,
            ts.createKeywordTypeNode(ts.SyntaxKind.StringKeyword),
            undefined
          )],
          ts.createBlock(
            [ts.createExpressionStatement(ts.createCall(
              ts.createSuper(),
              undefined,
              [ts.createIdentifier('workflowId')]
            ))],
            true
          )
        )]
      ),
      ts.createClassDeclaration(
        undefined,
        [ts.createModifier(ts.SyntaxKind.ExportKeyword)],
        ts.createIdentifier('WorkflowRuntimeErrorEvent'),
        undefined,
        [ts.createHeritageClause(
          ts.SyntaxKind.ExtendsKeyword,
          [ts.createExpressionWithTypeArguments(
            undefined,
            ts.createIdentifier('WorkflowBaseEvent')
          )]
        )],
        [ts.createConstructor(
          undefined,
          undefined,
          [
            ts.createParameter(
              undefined,
              [
                ts.createModifier(ts.SyntaxKind.PublicKeyword),
                ts.createModifier(ts.SyntaxKind.ReadonlyKeyword)
              ],
              undefined,
              ts.createIdentifier('workflowId'),
              undefined,
              ts.createKeywordTypeNode(ts.SyntaxKind.StringKeyword),
              undefined
            ),
            ts.createParameter(
              undefined,
              [ts.createModifier(ts.SyntaxKind.PublicKeyword)],
              undefined,
              ts.createIdentifier('message'),
              undefined,
              undefined,
              undefined
            )
          ],
          ts.createBlock(
            [ts.createExpressionStatement(ts.createCall(
              ts.createSuper(),
              undefined,
              [ts.createIdentifier('workflowId')]
            ))],
            true
          )
        )]
      )
    ];

    super.generate();

    return ast;
  }
}
