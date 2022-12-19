/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { RbacGuard } from '@gradii/puff-backend/auth';
import { TemplateModel } from '@gradii/puff-backend/common-models';
import { err, err404, PermissionCode, randomString } from '@gradii/puff-backend/core';
import { ProjectDaoService, TemplateDaoService } from '@gradii/puff-backend/dao';
import {
  CreateProjectFromTemplateDto, UpdateProjectModelDto, UpdateProjectNameDto
} from '@gradii/puff-backend/dto';
import { RequiredPipe } from '@gradii/puff-backend/shared';
import { HttpService } from '@nestjs/axios';
import { Body, Controller, Delete, Get, Inject, Param, Post, Put, UseGuards } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';
import { ApiBearerAuth, ApiTags } from '@nestjs/swagger';
import { ProjectRepoService } from '@gradii/puff-backend-api/common';

@ApiTags('project')
@Controller('workbench')
export class WorkbenchProjectController {

  constructor(
    @Inject(ProjectDaoService)
    private projectDao: ProjectDaoService,
    @Inject(TemplateDaoService)
    private templateDao: TemplateDaoService,
    private http: HttpService
  ) {
  }

  @ApiBearerAuth()
  @UseGuards(new RbacGuard([
    PermissionCode.R_V1,
    PermissionCode.R_WORKBENCH,
    PermissionCode.API_V1_WORKBENCH_PROJECT_INFO
  ]))
  @UseGuards(AuthGuard('jwt'))
  @Get('project/:viewId')
  async getProject(
    @Param('viewId', RequiredPipe)
      viewId: string
  ) {
    const project = await this.projectDao.findOne(viewId);
    if (!project) {
      throw err`project not found`;
    }

    // try {
    //   const res = await this.http.get(`https://git.gradii.com/api/v1/repos/puff-app/${viewId}`, {
    //     headers: {
    //       'Authorization': 'token ' + '2069a5fbbf68aa725aa1a2f5a1eba75749312977' // 'process.env.GIT_TOKEN'
    //     }
    //   }).toPromise();
    // } catch (e) {
    //   console.log(e);
    //   const res = await this.http.post(`https://git.gradii.com/api/v1/orgs/puff-app/repos`, {
    //     name   : viewId,
    //     private: true
    //   }, {
    //     headers: {
    //       'Authorization': 'token ' + '2069a5fbbf68aa725aa1a2f5a1eba75749312977' // 'process.env.GIT_TOKEN'
    //     }
    //   }).toPromise();
    // }

    const repo         = await ProjectRepoService.initProjectRepoService(viewId);
    const projectModel = await repo.getProjectPublic();

    return {
      project: {
        description : project.description,
        editsCount  : project.editsCount,
        id          : project.id,
        locked      : project.locked,
        name        : project.name,
        projectType : project.projectType,
        shareId     : project.shareId,
        shared      : project.shared,
        sharedByMe  : project.sharedByMe,
        sharedWithMe: project.sharedWithMe,
        themeId     : project.themeId,
        thumbnail   : project.thumbnail,
        tutorialId  : project.tutorialId,
        type        : project.type,
        updated_at  : project.updated_at,
        version     : project.version,
        viewId      : project.viewId,
        created_at  : project.created_at,
        deleted_at  : project.deleted_at,
        model       : projectModel
      }
    };
  }

  @ApiBearerAuth()
  @UseGuards(new RbacGuard([
    PermissionCode.R_V1,
    PermissionCode.R_WORKBENCH,
    PermissionCode.API_V1_WORKBENCH_PROJECT_LIST
  ]))
  @UseGuards(AuthGuard('jwt'))
  @Get('project')
  async listProject() {
    // return [];
    return this.projectDao.findAll();
  }

  // /**
  //  *
  //  * @param project
  //  * @param body
  //  */
  // @ApiBearerAuth()
  // @UseGuards(new RbacGuard([
  //   PermissionCode.R_V1,
  //   PermissionCode.R_WORKFLOW,
  //   PermissionCode.API_V1_WORKFLOW_PROJECT_UPDATE_MODEL
  // ]))
  // @UseGuards(AuthGuard('jwt'))
  // @Put(':project/model')
  // async createProjectFromTemplate(@Param() project, @Body() body: CreateProjectFromTemplateDto) {
  //   return {
  //     project: {
  //       id        : 1,
  //       shareId   : 2,
  //       model     : JSON.stringify({}),
  //       name      : 'name1',
  //       version   : 0,
  //       themeId   : 1,
  //       tutorialId: 0,
  //       editsCount: 0
  //     }
  //   };
  // }

  /**
   *
   * @param viewId
   * @param body
   */
  @ApiBearerAuth()
  @UseGuards(new RbacGuard([
    PermissionCode.R_V1,
    PermissionCode.R_WORKFLOW,
    PermissionCode.API_V1_WORKFLOW_PROJECT_UPDATE_MODEL
  ]))
  @UseGuards(AuthGuard('jwt'))
  @Put('/project/:viewId/model')
  async updateModel(@Param('viewId', RequiredPipe) viewId: string,
                    @Body() body: UpdateProjectModelDto) {
    const projectModel = await this.projectDao.findOne(viewId);

    const model = JSON.parse(body.model);
    const repo  = await ProjectRepoService.initProjectRepo(projectModel.viewId);
    await repo.addOrUpdateProjectModel(model, 'update model');

    return {
      project: projectModel
    };
  }

  /**
   * create project from template
   *
   * @example
   * ```
   * description: ""
   * locked: false
   * name: "dddddd"
   * sharedByMe: false
   * sharedWithMe: false
   * thumbnail: ""
   * type: "Marketplace"
   * updatedAt: "2020-09-28T07:04:43.267+0000"
   * viewId: "QlZAJXT22f"
   * ```
   */
  @ApiBearerAuth()
  @UseGuards(new RbacGuard([
    PermissionCode.R_V1,
    PermissionCode.R_WORKBENCH,
    PermissionCode.API_V1_WORKBENCH_PROJECT_CREATE
  ]))
  @UseGuards(AuthGuard('jwt'))
  @Post('project')
  async createProject(@Body() body: CreateProjectFromTemplateDto) {
    // this.templateDocDao.create();
    // return this.projectDao.findAll();
    const templateModel: TemplateModel = await this.templateDao.findOne(body.templateId);

    const existsProjectName = await this.projectDao.existsProjectName(body.name);

    if (existsProjectName) {
      throw err`projectName ${body.name} 已被占用`;
    }

    const projectModel = await this.projectDao.createProject({
      viewId     : randomString(20),
      name       : body.name,
      projectType: body.projectType,
      model      : templateModel.model,
      locked     : false,
      sharedByMe : false,
      type       : 'ApiTest',
      description: body.properties.description || ''
    });

    // const storagePath = path.join(environment.multerConfig.workbenchDest);
    // const projectsPath = path.join(storagePath, 'projects');
    // const repoPath = path.join(projectsPath, projectModel.viewId, 'repo');

    const repo = await ProjectRepoService.initProjectRepo(projectModel.viewId);
    await repo.addOrUpdateProjectModel(projectModel.model, 'init');

    return projectModel;
  }


  @ApiBearerAuth()
  @UseGuards(new RbacGuard([
    PermissionCode.R_V1,
    PermissionCode.R_WORKBENCH,
    PermissionCode.API_V1_WORKBENCH_PROJECT_DELETE
  ]))
  @UseGuards(AuthGuard('jwt'))
  @Delete('project/:viewId')
  async deleteProject(@Param('viewId', RequiredPipe) viewId: string) {
    const projectModel = await this.projectDao.findOne(viewId);

    if (projectModel) {
      return await projectModel.destroy();
    }
  }

  @ApiBearerAuth()
  @UseGuards(new RbacGuard([
    PermissionCode.R_V1,
    PermissionCode.R_WORKBENCH,
    PermissionCode.API_V1_WORKBENCH_PROJECT_DELETE
  ]))
  @UseGuards(AuthGuard('jwt'))
  @Put('project/:viewId')
  async renameProject(
    @Param('viewId', RequiredPipe)
      viewId: string,
    @Body() body: UpdateProjectNameDto) {
    const projectModel = await this.projectDao.findOne(viewId);

    if (projectModel) {
      projectModel.name = body.name;
      return projectModel.save();
    }
    throw err404(`${viewId} not found`);
  }
}
