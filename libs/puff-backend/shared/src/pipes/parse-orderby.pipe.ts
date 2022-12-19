/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { isString } from '@gradii/nanofn';
import { ArgumentMetadata, Injectable, PipeTransform } from '@nestjs/common';


@Injectable()
export class ParseOrderbyPipe implements PipeTransform {
  transform(value: any, metadata: ArgumentMetadata): any {
    const orderDescriptions = [];
    if (isString(value) && value.length > 0) {
      value.split('|').forEach(it => {
        let [field, order] = it.split(',');
        if (field) {
          if (!order) {
            order = 'asc';
          }
          order = order.toLowerCase();
          orderDescriptions.push([field, order === 'asc' || order === 'desc' ? order : 'asc']);
        }
      });
    }
    return orderDescriptions;
  }
}
