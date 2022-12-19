/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import * as fs from 'fs';
import git from 'isomorphic-git';

export class ProjectBuildService {
  constructor(public readonly projectBuildPath: string) {
  }

  generate(generator: any) {
    // generator
  }

  build() {

  }

  async generateUpdateGit() {
    const results = await git.statusMatrix({
      fs,
      dir: this.projectBuildPath
    });

    const modifyFiles = results.filter(it => {
      return it[2] !== 1;
    });

    if (modifyFiles.length > 0) {
      for (const [file, head, workingTree, stage] of modifyFiles) {
        if (workingTree === 2) {
          await git.add({
            fs,
            dir     : this.projectBuildPath,
            filepath: file
          });
        } else if (workingTree === 0) {
          await git.remove({
            fs,
            dir     : this.projectBuildPath,
            filepath: file
          });
        }
      }

      await git.commit({
        fs,
        dir    : this.projectBuildPath,
        author : {
          name : 'Auto Generate Service',
          email: 'aidevops@users.noreply.github.com'
        },
        message: 'wip: generate repo files'
      });
    }

  }
}
