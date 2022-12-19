import * as ts from 'typescript';
import { Generate } from '../generate';


export class GenerateStepStatus extends Generate {
  filename = 'app/workflow/step-status.ts';

  constructor(public ctx) {
    super();
  }

  generate() {
    const ast: ts.SourceFile = ts.createSourceFile('', `export class StepStatus {
  static StartStatus = 'Running Step: StartStatus';
  static SuccessStatus = 'Running Step: SuccessStatus';
  static FailureStatus = 'Running Step: FailStatus';
  static FinishedStatus = 'Finished Step';
}

export class StepStatusDefaultMessage {
  static StartMessage(stepName) {
    return 'Running Step: StartStatus';
  }

  static SuccessMessage(stepName) {
    return 'Running Step: SuccessStatus';
  }

  static FailureMessage(stepName) {
    return \`fail run stepName: [\${stepName}]\`;
  }

}

    `, ts.ScriptTarget.Latest, true, ts.ScriptKind.TS);

    return ast.statements;
  }
}
