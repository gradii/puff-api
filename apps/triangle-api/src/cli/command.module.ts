import { HttpModule } from '@nestjs/axios';
import { Module } from '@nestjs/common';
import { TaskDownloadIconCommand } from './tasks/task-download-icon.command';
import { TaskEchoCommand } from './tasks/task-echo.command';
import { TaskRunner } from './tasks/task.command';
import { PackQuestions, TaskQuestions } from './tasks/task.questions';


@Module({
  imports  : [
    HttpModule
  ],
  providers: [
    TaskRunner,
    TaskQuestions,
    PackQuestions,
    TaskDownloadIconCommand,
    TaskEchoCommand
  ],
})
export class CommandModule {
}
