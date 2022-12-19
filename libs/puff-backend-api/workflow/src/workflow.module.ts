/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { Module } from '@nestjs/common';
import { WorkflowHistoryController } from './controllers/workflow-history.controller';

@Module({
  controllers: [
    WorkflowHistoryController
  ]
})
export class WorkflowModule {
}
