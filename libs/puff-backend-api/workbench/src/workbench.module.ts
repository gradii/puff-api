/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { CommandServerModule } from '@gradii/puff-backend/command-server';
import { HttpModule } from '@nestjs/axios';
import { Module } from '@nestjs/common';
import { AuthModule } from '@gradii/puff-backend/auth';
import { ProjectDaoService, TemplateDaoService } from '@gradii/puff-backend/dao';
import { PuffSharedModule } from '@gradii/puff-backend/shared';
import { GenerateProjectController } from './controllers/generate-project.controller';
import { ProjectThemeController } from './controllers/project-theme.controller';
import {
  WorkbenchProjectThumbnailController
} from './controllers/workbench-project-thumbnail.controller';
import { WorkbenchProjectController } from './controllers/workbench-project.controller';
import { WorkbenchTemplateController } from './controllers/workbench-template.controller';
import { WorkflowProjectBuildController } from './controllers/workflow-project-build.controller';


@Module({
  imports    : [
    HttpModule,
    PuffSharedModule,
    // DatabaseModule,
    AuthModule,
    CommandServerModule

    // SequelizeModule.forFeature([
    //   ProjectModel,
    //   TemplateModel
    // ])
  ],
  controllers: [
    WorkbenchProjectController,
    WorkbenchProjectThumbnailController,
    WorkbenchTemplateController,

    ProjectThemeController,
    WorkflowProjectBuildController,

    GenerateProjectController
  ],
  providers  : [
    ProjectDaoService,
    TemplateDaoService
  ],
  exports    : []
})
export class WorkbenchModule {
}
