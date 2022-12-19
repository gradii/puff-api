export class WorkflowGeneratorCtx {
  rootCtx = {
    rootDir: ''
  };
  mainCtx = {
    dependencies: []
  };
  appModuleCtx = {
    dependencies: []
  };

  workflowProjectCtx = {
    rooDir: ''
  };

  initRootCtx({ rootDir }) {
    this.rootCtx.rootDir = rootDir;
  }

  createMainCtx() {
    return { ...this.mainCtx, ...this.rootCtx };
  }

  createAppModuleCtx() {
    return { ...this.appModuleCtx, ...this.rootCtx };
  }

  createWorkflowProjectCtx(projectName, trigger, workflowModel) {
    return {
      ...this.workflowProjectCtx,
      ...this.rootCtx,
      trigger    : trigger || {},
      workflowModel,
      projectName: projectName
    };
  }
}
