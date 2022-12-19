/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { FileUtils } from '@gradii/puff-backend/utils';
import { Module } from '@nestjs/common';
import { Commands } from '../api/commands';

@Module({
  providers: [
    {provide: 'commands', useValue: new Commands(5, 15)},
    {provide: 'fileUtils', useClass: FileUtils}
  ],
  exports  : ['commands', 'fileUtils'],
  imports  : []
})
export class CommandServerModule {

}
