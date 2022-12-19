/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import * as ts from 'typescript';
import { generateImportDeclaration } from '../../common/helper';
import { Generate } from '../generate';
import { GenerateProjectWorkflowModule } from './generate-project/generate-project-workflow-module';
import { slugCase, pascalCase } from '@gradii/nanofn';

export class GenerateWorkflowModule extends Generate {
  filename = 'app/workflow/workflow.module.ts';

  imports = [
    { from: '@nestjs/common', importClause: ['Module'] },
    { from: './workflow-saga.service', importClause: ['WorkflowSagaService'] },
    { from: '@nestjs/cqrs', importClause: ['CqrsModule'] },
    { from: './kill-action-command-handler.service', importClause: ['KillActionCommandHandlerService'] }
  ];

  addedImports = [];

  module = {
    imports    : [
      { from: '@nestjs/cqrs', importClause: ['CqrsModule'] }
    ],
    controllers: [
      // { from: '@nestjs/cqrs', importClause: ['CqrsModule'] },
    ],
    providers  : [
      { from: './workflow-saga.service', importClause: ['WorkflowSagaService'] },
      { from: './kill-action-command-handler.service', importClause: ['KillActionCommandHandlerService'] }
    ]
  };

  constructor(public ctx: {
    projectName: string,
    workflowModel: any[],
    [key: string]: any,
  }) {
    super();
  }

  addImports(...args) {
    this.module.imports.push(...args);
  }

  addControllers(...args) {
    this.module.controllers.push(...args);
  }

  addProviders(...args) {
    this.module.providers.push(...args);
  }

  moduleImports() {
    const list = this.module.imports.reduce((prev, curr) => {
      this.addedImports.push(curr);
      return [...prev, ...curr.importClause];
    }, []).map(it => {
      return ts.createIdentifier(it);
    });

    return ts.createArrayLiteral(
      list,
      list.length > 0
    );
  }

  moduleControllers() {
    const list = this.module.controllers.reduce((prev, curr) => {
      this.addedImports.push(curr);
      return [...prev, ...curr.importClause];
    }, []).map(it => {
      return ts.createIdentifier(it);
    });

    return ts.createArrayLiteral(
      list,
      list.length > 0
    );
  }

  moduleProviders() {
    const list = this.module.providers.reduce((prev, curr) => {
      this.addedImports.push(curr);
      return [...prev, ...curr.importClause];
    }, []).map(it => {
      return ts.createIdentifier(it);
    });

    return ts.createArrayLiteral(
      list,
      list.length > 0
    );
  }


  _normalizeImports() {
    // if (this.hasSwagger) {
    //   this.addedImports.push({
    //     from: '@nestjs/swagger', importClause: ['DocumentBuilder', 'SwaggerModule']
    //   });
    // }

    //region arrange imports order and combine import clause
    //endregion

    const rst: { [key: string]: Set<string> } = {};

    for (let it of [...this.imports, ...this.addedImports]) {
      // rst[it.from] = it.importClause;
      if (!rst[it.from]) {
        rst[it.from] = new Set();
      }
      it.importClause.forEach(importClause => {
        rst[it.from].add(importClause);
      });
    }
    const rstList = [];
    for (let [key, val] of Object.entries(rst)) {
      rstList.push({ from: key, importClause: Array.from(val) });
    }

    return rstList;
  }

  /**
   *
   */
  _preGenerate() {
    //before generate workflow module, should generate workflow project first
    // for (let model of this.ctx.workflowModel) {
    //   // const projectName = camel(model.name);
    //
    // }

    const { projectName } = this.ctx;

    this.module.imports.push(
      { from: `./${slugCase(projectName)}/${slugCase(projectName)}-workflow.module`, importClause: [`${pascalCase(projectName)}WorkflowModule`] }
    );

    const generate = new GenerateProjectWorkflowModule(this.ctx);
    const asts = generate.generate();
    generate.outputFile(asts);
  }


  generate() {
    this._preGenerate();


    //first
    const moduleAst = ts.createClassDeclaration(
      [ts.createDecorator(ts.createCall(
        ts.createIdentifier('Module'),
        undefined,
        [ts.createObjectLiteral(
          [
            ts.createPropertyAssignment(
              ts.createIdentifier('imports'),
              this.moduleImports()
            ),
            ts.createPropertyAssignment(
              ts.createIdentifier('controllers'),
              this.moduleControllers()
            ),
            ts.createPropertyAssignment(
              ts.createIdentifier('providers'),
              this.moduleProviders()
            )
          ],
          true
        )]
      ))],
      [ts.createModifier(ts.SyntaxKind.ExportKeyword)],
      ts.createIdentifier('WorkflowModule'),
      undefined,
      undefined,
      []
    );
    //second
    const importAst = this._normalizeImports().map(it => {
      return generateImportDeclaration(it.from, it.importClause);
    });

    return [
      ...importAst,
      moduleAst
    ];
  }
}
