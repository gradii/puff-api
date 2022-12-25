/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { PermissionCode } from '@gradii/puff-backend/core';
import { environment } from '@gradii/puff-backend/environment';
import { RbacGuard } from '@gradii/puff-backend/auth';
import { RequiredPipe } from '@gradii/puff-backend/shared';
import { ProjectDaoService, TemplateDaoService } from '@gradii/puff-backend/dao';
import { Controller, Get, Inject, Query, UseGuards } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';
import { ApiBearerAuth, ApiTags } from '@nestjs/swagger';
import * as fs from 'fs';
import * as fse from 'fs-extra';
import * as git from 'isomorphic-git';
import http from 'isomorphic-git/http/node';
import { load } from 'js-yaml';
import * as path from 'path';


@ApiTags('project')
@Controller('workbench')
export class ProjectThemeController {

  constructor(
    @Inject(ProjectDaoService)
    private projectDao: ProjectDaoService,
    @Inject(TemplateDaoService)
    private templateDao: TemplateDaoService
  ) {
  }

  @ApiBearerAuth()
  @UseGuards(new RbacGuard([
    PermissionCode.R_V1,
    PermissionCode.R_WORKBENCH,
    PermissionCode.API_V1_WORKBENCH_PROJECT_THEME
  ]))
  @UseGuards(AuthGuard('jwt'))
  @Get('theme')
  async getProject(@Query('projectId', RequiredPipe) projectId: string) {
    // const listDir =
    const projectDir      = path.join(environment.multerConfig.workbenchDest, 'projects', projectId,
      'public');
    const projectThemeDir = path.join(projectDir, 'themes');
    if (!fs.existsSync(projectThemeDir)) {
      fse.ensureDirSync(projectThemeDir);
    }
    const files = fs.readdirSync(projectThemeDir);

    const themes = [];

    // project theme
    for (const it of files) {
      if (it.endsWith('.yml') || it.endsWith('.yaml')) {
        const filePath = path.join(projectThemeDir, it);
        const themeYml = fs.readFileSync(filePath, {encoding: 'utf8'});
        const doc      = load(themeYml);
        themes.push(doc);
      }
    }

    // global default theme
    const globalThemePath = path.join(environment.multerConfig.workbenchDest, 'themes');
    if (
      !fs.existsSync(globalThemePath) ||
      !fs.existsSync(path.join(globalThemePath, '.git'))
    ) {
      await git.clone({
        fs    : fs,
        dir   : globalThemePath,
        http  : http,
        url   : 'https://git.gradii.com/puff-template/themes',
        onAuth: url => {
          return {
            username: 'readonly@gradii.com',
            password: 'e90dafa25caf36652eddd19abafedfc3c1e2fd61',
          };
        }
      });
    }

    const theme            = 'default';
    const themePath        = path.join(globalThemePath, theme);
    const globalThemeFiles = fs.readdirSync(themePath, {encoding: 'utf8'});
    for (const it of globalThemeFiles) {
      const filePath = path.join(themePath, it);
      const themeYml = fs.readFileSync(filePath, {encoding: 'utf8'});
      const doc      = load(themeYml);
      themes.push(doc);
    }

    return themes;
  }

}
