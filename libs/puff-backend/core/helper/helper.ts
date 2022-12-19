/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { HttpException, HttpStatus } from '@nestjs/common';
import { createHash } from 'crypto';

const hashMap: Record<string, string> = {};

export function err(segments: TemplateStringsArray, ...args: (string | number)[]) {
  const uniq = segments.join('');
  const rst  = [];
  for (let i = 0; i < segments.length; i++) {
    if (i > 0) {
      rst.push(args[i - 1]);
    }
    rst.push(segments[i]);
  }
  if (!(uniq in hashMap)) {
    hashMap[uniq] = createHash('sha1').update(uniq).digest().slice(0, 8).toString('base64');
  }
  const hash = hashMap[uniq];
  return new HttpException({
    errCode: hash,
    message: rst.join('')
  }, HttpStatus.OK);
}

export function err404(message?: string) {
  return new HttpException({
    errCode: '404',
    message: message || 'Not Found'
  }, HttpStatus.OK);
}
