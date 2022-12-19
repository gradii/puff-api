/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import * as fs from 'fs';
import * as fse from 'fs-extra';
import * as git from 'isomorphic-git';
import * as path from 'path';

//
export async function cloneFsRepo(
  sourceRepo: string,
  outputRepo: string,
  checkoutConfig = {}
) {
  const sourceGit = path.join(sourceRepo, '.git');
  const outPutGit = path.join(outputRepo, '.git');
  await fse.copy(sourceGit, outPutGit);

  await git.checkout({
    force: true,
    ref  : 'master',
    ...checkoutConfig,
    dir: outputRepo,
    fs
  });

}
