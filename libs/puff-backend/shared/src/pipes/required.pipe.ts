/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { ArgumentMetadata, Injectable, PipeTransform } from '@nestjs/common';


@Injectable()
export class RequiredPipe implements PipeTransform {
  transform(value: any, metadata: ArgumentMetadata): any {
    if (value === undefined || value === null || value === '') {
      throw new Error(`${metadata.data} is required`);
    }
    return value;
  }
}
