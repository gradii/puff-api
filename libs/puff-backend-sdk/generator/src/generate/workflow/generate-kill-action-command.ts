import { Generate } from '../generate';
import * as ts from 'typescript';


export class GenerateKillActionCommand extends Generate {

  filename = 'app/workflow/kill-action.command.ts';

  constructor(public ctx) {
    super();
  }

  generate() {
    return [
      ts.createClassDeclaration(
        undefined,
        [ts.createModifier(ts.SyntaxKind.ExportKeyword)],
        ts.createIdentifier('KillActionCommand'),
        undefined,
        undefined,
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
      )
    ];

  }
}
