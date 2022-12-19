import { GenerateKillActionCommand } from './workflow/generate-kill-action-command';
import { GenerateKillActionCommandHandlerService } from './workflow/generate-kill-action-command-handler-service';
import { GenerateStepStatus } from './workflow/generate-step-status';
import { GenerateWorkflowModule } from './workflow/generate-workflow-module';
import { GenerateWorkflowSagaService } from './workflow/generate-workflow-saga-service';
import { GenerateWorkflowBaseEvent } from './workflow/generate-workflow-base-event';


export class WorkflowProjectGenerator {
  constructor(public ctx: {
    rootDir: string,
    projectName: string,
    workflowModel: any[]
  }) {
  }

  beginGenerate() {
    this.generateKillActionCommand();
    this.generateKillActionCommandHandlerService();
    this.generateStepStatus();
    this.generateWorkflowModule();
    this.generateWorkflowSagaService();
    this.generateWorkflowBaseEvent();

    //generate project

  }

  generateKillActionCommand() {
    const generate = new GenerateKillActionCommand(this.ctx);
    const asts = generate.generate();

    generate.outputFile(asts);
  }

  generateKillActionCommandHandlerService() {
    const generate = new GenerateKillActionCommandHandlerService(this.ctx);
    const asts = generate.generate();

    generate.outputFile(asts);
  }

  generateStepStatus() {
    const generate = new GenerateStepStatus(this.ctx);
    const asts = generate.generate();

    generate.outputFile(asts);
  }

  generateWorkflowModule() {
    const generate = new GenerateWorkflowModule(this.ctx);
    const asts = generate.generate();

    generate.outputFile(asts);
  }

  generateWorkflowSagaService() {
    const generate = new GenerateWorkflowSagaService(this.ctx);
    const asts = generate.generate();

    generate.outputFile(asts);
  }

  generateWorkflowBaseEvent() {
    const generate = new GenerateWorkflowBaseEvent(this.ctx);
    const asts = generate.generate();

    generate.outputFile(asts);
  }

}
