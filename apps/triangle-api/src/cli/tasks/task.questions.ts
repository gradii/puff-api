import { Question, QuestionSet } from 'nest-commander';

@QuestionSet({ name: 'task' })
export class TaskQuestions {
  @Question({
    message: 'What task would you like to execute?',
    name: 'task',
  })
  paseTask(val: string) {
    return val;
  }
}

@QuestionSet({ name: 'pack' })
export class PackQuestions {
  @Question({
    message: 'What pack would you like to download?',
    name: 'pack',
  })
  parsePack(val: string) {
    return val;
  }
}

