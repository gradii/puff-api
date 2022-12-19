import { WorkflowModel } from '@gradii/puff-backend/common-models';
import { join as pathJoin } from 'path';
import { GenerateAppModule } from './generate/generate-app-module';
import { GenerateMain } from './generate/generate-main';
import { WorkflowProjectGenerator } from './generate/workflow-project.generator';
import { WorkflowGeneratorCtx } from './workflow-generator-ctx';

export class WorkflowGenerator {

  rootCtx: WorkflowGeneratorCtx;
  private projectBackendRootPath: string;

  constructor(
    public projectName: string,
    public projectBuildPath: string,
    public trigger: string,
    public workflowModel: WorkflowModel
  ) {
    this.projectBackendRootPath = pathJoin(this.projectBuildPath, 'apps/backend/src/');
    this.rootCtx = new WorkflowGeneratorCtx();
    this.rootCtx.initRootCtx({ rootDir: this.projectBackendRootPath });
  }

  beginGenerate() {
    this.generateMain();
    this.generateAppModule();
    this.generateWorkflow();
  }

  generateMain() {
    const main = new GenerateMain(this.rootCtx.createMainCtx());
    main.hasHttp = true;
    main.hasSwagger = false;
    const asts = main.generate();

    main.outputFile(asts);

  }

  generateAppModule() {
    const generator = new GenerateAppModule(this.rootCtx.createAppModuleCtx());
    const asts = generator.generate();

    generator.outputFile(asts);
  }

  generateWorkflow() {
    const generateWorkflow = new WorkflowProjectGenerator(
      this.rootCtx.createWorkflowProjectCtx(this.projectName, this.trigger, this.workflowModel)
    );
    generateWorkflow.beginGenerate();
  }

  registryGenerate() {

  }

}
