/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { err } from '@gradii/puff-backend/core';
import { RequiredPipe } from '@gradii/puff-backend/shared';
import { Controller, Get, Param, ParseIntPipe } from '@nestjs/common';
import { ApiParam } from '@nestjs/swagger';
import { WorkflowModel } from '@gradii/puff-backend/common-models';


@Controller('workflow-history')
export class WorkflowHistoryController {

  @ApiParam({
    name: 'workflowId'
  })
  @Get('/id/:workflowId')
  async findId(
    @Param('workflowId', RequiredPipe, ParseIntPipe)
      workflowId: number
  ) {
    const workflow = await WorkflowModel.createQuery().select()
      .with(
        'createdBy',
        'processes',
        'processes.processTarget',
        // 'processes.actions',
        // 'processes.transitions',
        // 'processes.transitions.fromAction',
        // 'processes.transitions.toAction',
      )
      .where('id', workflowId)
      .first();
    if (workflow) {
      return {
        workflow: workflow,
        workflowId
      };
    } else {
      throw err`not found workflow id [${workflowId}]`;
    }
  }

  @Get('/list')
  async getList(): Promise<any[]> {
    const list = await WorkflowModel.createQuery().select().get();
    return list.map(it => {
      return it.toArray();
    });
  }

}
