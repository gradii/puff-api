/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { Module } from '@nestjs/common';
import { DeployController } from './controllers/deploy.controller';

@Module({
  imports    : [],
  controllers: [DeployController]
})
export class DeployModule {

}
