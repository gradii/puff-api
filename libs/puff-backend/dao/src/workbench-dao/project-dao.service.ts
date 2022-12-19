/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { ProjectModel } from '@gradii/puff-backend/common-models';
import { randomString } from '@gradii/puff-backend/core';
import { Injectable, NotFoundException } from '@nestjs/common';


@Injectable()
export class ProjectDaoService {
  constructor(/*@InjectModel(ProjectModel)
              private readonly projectModel: typeof ProjectModel*/) {
  }

  // async create(projectDocumentDto: TemplateDto): Promise<ProjectDocument> {
  //
  // }
  //
  // async findAll(): Promise<ProjectDocument[]> {
  //   // return this.projectModel.find().exec();
  //   return [];
  // }

  async findAll({exclude = ['model']} = {}): Promise<any[]> {
    const list = await ProjectModel.createQuery().get(
      // {
      // attributes: { exclude }
      // }
    ) as ProjectModel[];
    return list.map(it => ({
      id        : it.id,
      viewId    : it.viewId,
      editsCount: it.editsCount,
      // model       : it.model,
      name        : it.name,
      projectType : it.projectType,
      shareId     : it.shareId,
      shared      : it.shared,
      themeId     : it.themeId,
      tutorialId  : it.tutorialId,
      version     : it.version,
      type        : it.type,
      description : it.description,
      sharedByMe  : it.sharedByMe,
      sharedWithMe: it.sharedWithMe,
      thumbnail   : it.thumbnail,
      locked      : it.locked,
      created_at  : it.created_at,
      updated_at  : it.updated_at,
      deleted_at  : it.deleted_at
    }));
  }

  async existsProjectName(projectName: string): Promise<boolean> {
    const count = await ProjectModel.createQuery().where('name', projectName).count();

    return count > 0;
  }

  async createProject({
                        viewId = randomString(20),
                        name,
                        projectType,
                        model,
                        locked = false,
                        sharedByMe = false,
                        type,
                        description = ''
                      }: {
    viewId?: string;
    name?: string;
    projectType?: string;
    model?: string;
    locked?: boolean;
    sharedByMe?: boolean;
    type?: string;
    description?: string;
  }) {
    while (true) {
      const rst = await ProjectModel.createQuery().find({
        where: {
          viewId
        }
      });
      if (!rst) {
        break;
      } else {
        viewId = randomString(20);
      }
    }

    const projectModel = await ProjectModel.createQuery().create({
      viewId,
      name,
      projectType,
      model,
      locked,
      sharedByMe,
      type,
      description
    });

    return projectModel;
  }

  async updateProjectModel({
                             viewId,
                             model,
                             version
                           }: {
    viewId: string;
    model: string;
    version: number;
  }): Promise<ProjectModel> {
    const projectModel = await ProjectModel.createQuery().find({
      where: {
        viewId
      }
    });
    if (!projectModel) {
      throw new NotFoundException('not found result from db');
    }
    projectModel.model = model;
    await projectModel.save();
    return projectModel;
  }

  async updateProjectThumbnail({
                                 viewId,
                                 thumbnail
                               }: {
    viewId: string;
    thumbnail: string;
  }): Promise<ProjectModel> {
    const projectModel = await ProjectModel.createQuery().where({view_id: viewId}).first();
    if (!projectModel) {
      throw new NotFoundException('not found result from db');
    }
    projectModel.thumbnail = thumbnail;
    await projectModel.save();
    return projectModel;
  }

  async findOne(viewId: string, {exclude = ['model']} = {}): Promise<ProjectModel> {
    return ProjectModel.createQuery().where('view_id', viewId).first();
  }
}
