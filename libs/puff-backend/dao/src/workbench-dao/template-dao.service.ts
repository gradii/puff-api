/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { TemplateModel } from '@gradii/puff-backend/common-models';
import { Injectable } from '@nestjs/common';


@Injectable()
export class TemplateDaoService {
  constructor(/*@InjectModel(TemplateModel)
              private readonly templateModel: typeof TemplateModel*/) {
  }

  // async create(templateDocumentDto: TemplateDto): Promise<TemplateDocument> {
  //   const createdCat = new this.templateModel(templateDocumentDto);
  //   return createdCat.save();
  // }
  //
  // async findAll(): Promise<TemplateDocument[]> {
  //   return this.templateModel.find().exec();
  // }

  async findOne(templateId: string): Promise<TemplateModel> {
    return TemplateModel.createQuery().find(templateId);
  }

  async findAll(): Promise<TemplateModel[]> {
    return await TemplateModel.createQuery().get(
      // {
      //   attributes: [
      //     'id',
      //     'availableFrom',
      //     'description',
      //     'locked',
      //     // 'model',
      //     'name',
      //     'preview',
      //     'previewLink',
      //     'priority',
      //     'tags',
      //     'usages'
      //   ]
      // }
    ) as TemplateModel[];
  }
}
