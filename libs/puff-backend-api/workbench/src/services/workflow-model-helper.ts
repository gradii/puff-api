/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import * as fs from 'fs-extra';
import { load } from 'js-yaml';
import { join as pathJoin } from 'path';


export class WorkflowModelHelper {
  constructor(public readonly projectPublicPath: string) {
  }

  getWorkflowInfo(): any {
    const content = fs.readFileSync(
      pathJoin(
        this.projectPublicPath,
        'workflowList.yml'
      ), {encoding: 'utf8'});

    return load(content);
  }
}
