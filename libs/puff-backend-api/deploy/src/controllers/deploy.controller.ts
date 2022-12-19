/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { ProjectRepoService } from '@gradii/puff-backend-api/common';
import {
  Commands, Executable, ExecutableType, nodePseudoTerminalFactory
} from '@gradii/puff-backend/command-server';
import { err } from '@gradii/puff-backend/core';
import { DeployeEnvDto, DeployeNotRequiredEnvDto } from '@gradii/puff-backend/dto';
import { RequiredPipe } from '@gradii/puff-backend/shared';
import { FileUtils } from '@gradii/puff-backend/utils';
import { Body, Controller, Get, Inject, Param, Post, Put } from '@nestjs/common';
import { ApiParam, ApiTags } from '@nestjs/swagger';
import * as dotenv from 'dotenv';
import * as fse from 'fs-extra';
import { join as pathJoin } from 'path';

@ApiTags('project')
@Controller('workbench')
export class DeployController {

  protected runningId: Record<string, string> = {};

  constructor(@Inject('commands')
              protected commands: Commands,
              @Inject('fileUtils')
              protected fileUtils: FileUtils) {
  }

  @Get('get-deploy-env/:viewId')
  @ApiParam({name: 'viewId', examples: {e1: {value: 'qejy2pzvrrkr072hqgs6'}}})
  async getDeployEnv(
    @Param('viewId', RequiredPipe) viewId: string
  ) {
    const repo    = await ProjectRepoService.initProjectRepoService(viewId);
    const envFile = pathJoin(repo.projectBuildPath, '.env');

    fse.ensureFileSync(envFile);

    const envContent = fse.readFileSync(envFile, {encoding: 'utf8'});

    return {
      envContent: envContent
    };
  }

  @Put('update-deploy-env/:viewId')
  @ApiParam({name: 'viewId', examples: {e1: {value: 'qejy2pzvrrkr072hqgs6'}}})
  async updateDeployEnv(
    @Param('viewId', RequiredPipe) viewId: string,
    @Body() body: DeployeEnvDto
  ) {
    const repo    = await ProjectRepoService.initProjectRepoService(viewId);
    const envFile = pathJoin(repo.projectBuildPath, '.env');

    fse.ensureFileSync(envFile);

    fse.writeFileSync(envFile, body.envContent, {encoding: 'utf8'});

    return {
      envContent: body.envContent
    };
  }


  @Post('deploy-restart-service/:viewId')
  @ApiParam({name: 'viewId', examples: {e1: {value: 'qejy2pzvrrkr072hqgs6'}}})
  async deployRestartService(
    @Param('viewId', RequiredPipe) viewId: string,
    @Body() body: DeployeNotRequiredEnvDto
  ) {

    if (this.runningId[viewId]) {
      // return { runningId: this.runningId[viewId] };
      const commandInfo = this.commands.findMatchingCommand(this.runningId[viewId],
        this.commands.history);
      this.commands.stopCommands([commandInfo]);
    }

    const repo = await ProjectRepoService.initProjectRepoService(viewId);

    //region
    const envFile = pathJoin(repo.projectBuildPath, '.env');

    fse.ensureFileSync(envFile);

    fse.writeFileSync(envFile, body.envContent, {encoding: 'utf8'});
    //endregion

    // const program = pathJoin(repo.projectBuildPath, 'dist/apps/backend', 'forever-run.js');

    // spawn('node', [program], {
    //   detached: true,
    //   stdio   : []
    // });

    const node = new Executable(
      `${viewId}`,
      nodePseudoTerminalFactory,
      this.fileUtils,
      this.commands
    );
    node.path  = this.fileUtils.findExecutable('node', repo.projectBuildPath);

    const {id} = node.run(ExecutableType.npm, repo.projectBuildPath, [
      'dist/apps/backend/main.js'
    ], true, {
      ...dotenv.parse(body.envContent)
    });

    this.runningId[viewId] = id;

    return {runningId: this.runningId[viewId]};
  }

  @Get('deploy-stop-service/:viewId')
  @ApiParam({name: 'viewId', examples: {e1: {value: 'qejy2pzvrrkr072hqgs6'}}})
  async deployStopService(
    @Param('viewId', RequiredPipe) viewId: string
  ) {

    if (this.runningId[viewId]) {
      // return { runningId: this.runningId[viewId] };
      const commandInfo = this.commands.findMatchingCommand(this.runningId[viewId],
        this.commands.history);
      this.commands.stopCommands([commandInfo]);
      delete this.runningId[viewId];
    } else {
      throw err`没有服务在运行`;
    }
  }

  @Get('deploy-restart-service/:viewId/log')
  @ApiParam({name: 'viewId', examples: {e1: {value: 'qejy2pzvrrkr072hqgs6'}}})
  async getDeployRestartServiceLog(
    @Param('viewId', RequiredPipe) viewId: string
  ) {
    if (!this.runningId[viewId]) {
      throw err`请先启动服务`;
      // return { runningId: this.runningId[viewId] };
    }

    const id          = this.runningId[viewId];
    const commandInfo = this.commands.findMatchingCommand(id, this.commands.history);
    return {
      log: commandInfo.out
    };
  }


}
