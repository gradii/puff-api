/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { ProjectRepoService } from '@gradii/puff-backend-api/common';
import { WorkflowGenerator } from '@gradii/puff-backend-sdk/generator';
import { err } from '@gradii/puff-backend/core';
import { ProjectDaoService } from '@gradii/puff-backend/dao';
import { RequiredPipe } from '@gradii/puff-backend/shared';

import { Controller, Get, Inject, Param } from '@nestjs/common';
import { ApiParam, ApiTags } from '@nestjs/swagger';
import * as fse from 'fs-extra';
import * as path from 'path';
import { ComponentModelHelper } from '../services/component-model-helper';
import { ProjectBuildService } from '../services/project-build.service';
import { WorkflowModelHelper } from '../services/workflow-model-helper';


@ApiTags('project', 'workbench', 'generate')
@Controller('workbench')
export class GenerateProjectController {

  constructor(@Inject(ProjectDaoService)
              private projectDao: ProjectDaoService) {
  }

  @Get('/generate-project/:viewId')
  @ApiParam({name: 'viewId', examples: {e1: {value: 'qejy2pzvrrkr072hqgs6'}}})
  async generateProject(
    @Param('viewId', RequiredPipe) viewId: string
  ) {
    const repo = await ProjectRepoService.initProjectRepoService(viewId);

    const projectInfo = await this.projectDao.findOne(viewId);

    if (!projectInfo) {
      throw err`nx generate project response error`;
    }

    const workflowModel = new WorkflowModelHelper(repo.projectPublicPath);
    const workflowInfo  = workflowModel.getWorkflowInfo();

    const componentListModel = new ComponentModelHelper(repo.projectPublicPath);
    const componentList      = componentListModel.getComponentListInfo();

    const trigger = componentList.find(it => it.definitionId === 'trigger');

    // todo remove me
    fse.emptyDirSync(path.join(repo.projectBuildPath, 'apps/backend/src/app/workflow'));

    const generator = new WorkflowGenerator(
      projectInfo.name,
      repo.projectBuildPath,
      // currently only support one trigger
      trigger,
      workflowInfo
    );

    generator.beginGenerate();

    const projectBuildService = new ProjectBuildService(repo.projectBuildPath);
    await projectBuildService.generateUpdateGit();

  }
}
