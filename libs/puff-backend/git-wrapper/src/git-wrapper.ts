/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import * as fs from 'fs';
import { checkout as gitCheckout, clone as gitClone } from 'isomorphic-git';

export function checkout(arg: Omit<Parameters<typeof gitCheckout>[0], 'fs'>) {
  return gitCheckout({
    ...arg,
    fs: fs
  });
}

export function clone(arg: Omit<Parameters<typeof gitClone>[0], 'fs'>) {
  return gitClone({
    ...arg,
    fs: fs
  });
}


