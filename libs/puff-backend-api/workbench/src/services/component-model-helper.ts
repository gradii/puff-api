/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import * as fs from 'fs-extra';
import { load } from 'js-yaml';
import { join as pathJoin } from 'path';

export class ComponentModelHelper {
  constructor(public readonly projectPublicPath: string) {
  }

  getComponentListInfo(): any[] {
    const content: string = fs.readFileSync(
      pathJoin(
        this.projectPublicPath,
        'componentList.yml'
      ), {encoding: 'utf8'});

    return load(content) as any[];
  }
}
