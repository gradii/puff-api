import { ModelMetadataModel } from '@gradii/puff-backend/common-models';
import { err } from '@gradii/puff-backend/core';
import { RequiredPipe } from '@gradii/puff-backend/shared';
import { Controller, Get, Param } from '@nestjs/common';

@Controller('form-metadata')
export class FormMetadataController {

  @Get('id/:formId')
  async getFormMetadata(@Param('formId', RequiredPipe) formId: string) {
    const meta = await ModelMetadataModel.createQuery()
      .where('schema_uid', formId)
      .first();

    if (!meta) {
      throw err`form uid [${formId}] is not found`;
    }
    return meta.toArray();
  }

  @Get('list')
  async getList() {
    const list = await ModelMetadataModel.createQuery().get();

    return list.map(it => it.toArray());
  }

}
