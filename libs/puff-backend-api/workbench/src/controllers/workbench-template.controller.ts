/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { RbacGuard } from '@gradii/puff-backend/auth';
import { PermissionCode } from '@gradii/puff-backend/core';
import { TemplateDaoService } from '@gradii/puff-backend/dao';
import { Controller, Get, Inject, UseGuards } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';
import { ApiBearerAuth, ApiTags } from '@nestjs/swagger';


@ApiTags('workbench', 'workben/template')
@Controller('workbench/template')
export class WorkbenchTemplateController {

  constructor(@Inject(TemplateDaoService)
              private templateDao: TemplateDaoService) {
  }

  @ApiBearerAuth()
  @UseGuards(new RbacGuard([
    PermissionCode.R_V1,
    PermissionCode.R_WORKBENCH,
    PermissionCode.API_V1_WORKBENCH_TEMPLATE
  ]))
  @UseGuards(AuthGuard('jwt'))
  @Get('all-enabled')
  async listProject() {
    return this.templateDao.findAll();
  }


  // @Get('testList')
  // async testList() {
  //
  // }
}
