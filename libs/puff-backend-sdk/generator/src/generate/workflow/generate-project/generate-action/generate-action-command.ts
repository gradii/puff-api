import * as ts from 'typescript';
import { Generate } from '../../../generate';

export class GenerateActionCommand extends Generate {

  get filename() {
    const {slugWorkflowActionModelName, slugProjectName} = this.ctx;
    return `app/workflow/${slugProjectName}/actions/${slugWorkflowActionModelName}-action.command.ts`;
  }

  imports = [
    { from: '../../workflow-base.event', importClause: ['WorkflowBaseEvent'] }
  ];

  constructor(
    public ctx: any,
    // public projectName: string,
    // public commandInfo: { commandName: string }
  ) {
    super();
  }

  generate() {
    const {slugWorkflowActionModelName, pascalWorkflowActionModelName, slugProjectName} = this.ctx;

    return [
      ts.createImportDeclaration(
        undefined,
        undefined,
        ts.createImportClause(
          undefined,
          ts.createNamedImports([ts.createImportSpecifier(
            false,
            undefined,
            ts.createIdentifier('WorkflowBaseEvent')
          )]),
          false
        ),
        ts.createStringLiteral('../../workflow-base.event')
      ),
      ts.createClassDeclaration(
        undefined,
        [ts.createModifier(ts.SyntaxKind.ExportKeyword)],
        ts.createIdentifier(`${pascalWorkflowActionModelName}ActionCommand`),
        undefined,
        undefined,
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
              [
                ts.createModifier(ts.SyntaxKind.PublicKeyword),
                ts.createModifier(ts.SyntaxKind.ReadonlyKeyword)
              ],
              undefined,
              ts.createIdentifier('params'),
              undefined,
              ts.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword),
              undefined
            ),
            ts.createParameter(
              undefined,
              [ts.createModifier(ts.SyntaxKind.PublicKeyword)],
              undefined,
              ts.createIdentifier('triggerEvent'),
              undefined,
              ts.createTypeReferenceNode(
                ts.createIdentifier('WorkflowBaseEvent'),
                undefined
              ),
              undefined
            )
          ],
          ts.createBlock(
            [],
            true
          )
        )]
      )
    ];

  }
}
