/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { RbacGuard } from '@gradii/puff-backend/auth';
import { PermissionCode } from '@gradii/puff-backend/core';
import { ProjectDaoService, TemplateDaoService } from '@gradii/puff-backend/dao';
import { UpdateProjectThumbnailDto } from '@gradii/puff-backend/dto';
import { RequiredPipe } from '@gradii/puff-backend/shared';
import { Body, Controller, Inject, Param, Put, UseGuards } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';
import { ApiBearerAuth, ApiTags } from '@nestjs/swagger';


@ApiTags('project')
@Controller('workbench')
export class WorkbenchProjectThumbnailController {
  constructor(
    @Inject(ProjectDaoService)
    private projectDao: ProjectDaoService,
    @Inject(TemplateDaoService)
    private templateDao: TemplateDaoService
  ) {
  }

  /**
   *
   * @param viewId
   * @param body
   */
  @ApiBearerAuth()
  @UseGuards(new RbacGuard([
    PermissionCode.R_V1,
    PermissionCode.R_WORKFLOW,
    PermissionCode.API_V1_WORKFLOW_PROJECT_THUMBNAIL
  ]))
  @UseGuards(AuthGuard('jwt'))
  @Put('/project/:viewId/thumbnail')
  async thumbnailModel(
    @Param('viewId', RequiredPipe) viewId: string,
    @Body() body: UpdateProjectThumbnailDto
  ) {
    const projectModel = await this.projectDao.updateProjectThumbnail({
      viewId   : viewId,
      thumbnail: body.thumbnail
    });

    return {
      project: projectModel
    };
  }


}
