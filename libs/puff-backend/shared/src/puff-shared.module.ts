/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { Module } from '@nestjs/common';
import { ParseDatePipe } from './pipes/parse-date.pipe';
import { ParseOrderbyPipe } from './pipes/parse-orderby.pipe';
import { RequiredPipe } from './pipes/required.pipe';

@Module({
  controllers: [],
  providers  : [
    ParseDatePipe,
    RequiredPipe,
    ParseOrderbyPipe,
  ]
})
export class PuffSharedModule {
}
