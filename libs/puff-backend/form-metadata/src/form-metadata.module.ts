import { Module } from '@nestjs/common';
import { FormMetadataController } from './form-metadata.controller';

@Module({
  controllers: [FormMetadataController],
})
export class FormMetadataModule {
}
