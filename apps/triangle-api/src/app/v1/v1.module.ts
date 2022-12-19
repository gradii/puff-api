import { AuthModule } from '@gradii/puff-backend/auth';
import { UploadDao } from '@gradii/puff-backend/dao';
import { PuffSharedModule } from '@gradii/puff-backend/shared';
import { HttpModule, Module } from '@nestjs/common';
import { ExcelController } from './controllers/excel/excel.controller';

import { UserController } from './controllers/member/user.controller';
import { CommodityService } from './services/commodity.service';
import { ExcelService } from './services/excel.service';


@Module({
  imports    : [
    HttpModule,
    PuffSharedModule,
    // DatabaseModule,
    AuthModule
  ],
  controllers: [
    ExcelController,

    // CommodityController,
    UserController,
  ],
  providers  : [
    ExcelService,

    CommodityService,

    UploadDao
  ],
  exports    : []
})
export class V1Module {
}
