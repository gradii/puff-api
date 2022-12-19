import * as ts from 'typescript';


describe('generate tstemplate', () => {
  it('test generate ast', () => {
    const ast = ts.createClassDeclaration(
      undefined,
      [ts.createModifier(ts.SyntaxKind.ExportKeyword)],
      ts.createIdentifier('StepStatus'),
      undefined,
      undefined,
      [
        ts.createProperty(
          undefined,
          [ts.createModifier(ts.SyntaxKind.StaticKeyword)],
          ts.createIdentifier('StartStatus'),
          undefined,
          undefined,
          ts.createStringLiteral('Running Step: StartStatus')
        ),
        ts.createProperty(
          undefined,
          [ts.createModifier(ts.SyntaxKind.StaticKeyword)],
          ts.createIdentifier('SuccessStatus'),
          undefined,
          undefined,
          ts.createStringLiteral('Running Step: SuccessStatus')
        ),
        ts.createProperty(
          undefined,
          [ts.createModifier(ts.SyntaxKind.StaticKeyword)],
          ts.createIdentifier('FailureStatus'),
          undefined,
          undefined,
          ts.createStringLiteral('Running Step: FailStatus')
        ),
        ts.createProperty(
          undefined,
          [ts.createModifier(ts.SyntaxKind.StaticKeyword)],
          ts.createIdentifier('FinishedStatus'),
          undefined,
          undefined,
          ts.createStringLiteral('Finished Step')
        )
      ]
    );

    const printer = ts.createPrinter({ newLine: ts.NewLineKind.LineFeed, omitTrailingSemicolon: true, removeComments: false });

    const resultFile = ts.createSourceFile('', '', ts.ScriptTarget.Latest,
      /*setParentNodes*/ false,
      ts.ScriptKind.TS);

    resultFile.statements = ts.createNodeArray([ast]);

    const result = printer.printNode(ts.EmitHint.Unspecified, resultFile, resultFile);

    expect(result).toMatchSnapshot()
  });
});
