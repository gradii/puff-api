import * as ts from 'typescript';

export function generateImportDeclaration(moduleSpecifier: string, namedImports: (string | { propertyName: string, name: string })[] | string) {
  return ts.createImportDeclaration(
    undefined,
    undefined,
    ts.createImportClause(
      undefined,

      Array.isArray(namedImports) ?

        ts.createNamedImports(
          namedImports.map(it => {
            if (typeof it === 'string') {
              return ts.createImportSpecifier(
                false,
                undefined,
                ts.createIdentifier(it)
              );
            } else {
              return ts.createImportSpecifier(
                false,
                ts.createIdentifier(it.propertyName),
                ts.createIdentifier(it.name)
              );
            }
          })
        ) :
        ts.createNamespaceImport(ts.createIdentifier(namedImports)),
      false
    ),
    ts.createStringLiteral(moduleSpecifier)
  );

}
