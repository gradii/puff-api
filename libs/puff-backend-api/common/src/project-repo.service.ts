/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { camelCase } from '@gradii/nanofn';
import { environment } from '@gradii/puff-backend/environment';
import * as fs from 'fs';
import * as fse from 'fs-extra';
import git from 'isomorphic-git';
import http from 'isomorphic-git/http/node';
import { dump, load } from 'js-yaml';
import { join, join as pathJoin } from 'path';


export const enum ProjectRepoVariantPath {
  deployRepo = 'deploy-repo',
  deploy     = 'deploy',
  generate   = 'generate',
  public     = 'public',
  repo       = 'repo'
}

export const DUMMY_REPO_PATH = 'dummy-repo';


export class ProjectRepoService {
  static projectsBasePath = pathJoin(environment.multerConfig.workbenchDest, 'projects');
  public projectRepoPath: string;
  public projectPublicPath: string;
  public projectGeneratePath: string;
  public projectDeployPath: string;
  public projectBuildPath: string;

  constructor(protected projectViewId: string) {
    this.projectRepoPath     = ProjectRepoService.getProjectVariantPath(
      ProjectRepoService.projectsBasePath,
      projectViewId, ProjectRepoVariantPath.repo);
    this.projectPublicPath   = ProjectRepoService.getProjectVariantPath(
      ProjectRepoService.projectsBasePath,
      projectViewId, ProjectRepoVariantPath.public);
    this.projectGeneratePath = ProjectRepoService.getProjectVariantPath(
      ProjectRepoService.projectsBasePath,
      projectViewId, ProjectRepoVariantPath.generate);
    this.projectDeployPath   = ProjectRepoService.getProjectVariantPath(
      ProjectRepoService.projectsBasePath,
      projectViewId, ProjectRepoVariantPath.deploy);
    this.projectBuildPath    = ProjectRepoService.getProjectVariantPath(
      ProjectRepoService.projectsBasePath,
      projectViewId, ProjectRepoVariantPath.deployRepo);
  }

  existDeployRepo() {
    if (!(/^storage/.exec(this.projectRepoPath))) {
      throw new Error(`path is out of directory ${this.projectRepoPath}`);
    }
    return fs.existsSync(join(this.projectRepoPath, '.git'));
  }

  // async checkRepo() {
  //
  //   const root     = await git.findRoot({
  //     fs,
  //     filepath: this.projectRepoPath
  //   });
  //   const cwd      = process.cwd();
  //   const rootPath = pathRelative(cwd, root);
  //   if (rootPath !== this.projectRepoPath || !(/^storage/.exec(rootPath))) {
  //     throw new Error(`path is out of directory ${this.projectRepoPath}`);
  //   }
  // }

  async addOrUpdateProjectModel(model: object, message = 'update model') {
    // console.log(model);
    const files = [];
    // add themes dir

    files.push('themes/.gitkeep');
    fse.ensureFileSync(pathJoin(this.projectRepoPath, 'themes/.gitkeep'));
    await git.add({
      fs,
      dir     : this.projectRepoPath,
      filepath: 'themes/.gitkeep'
    });

    // add projet model files
    for (const [key, val] of Object.entries(model)) {
      const file        = `${key}.yml`;
      const fileContent = dump(val);
      fs.writeFileSync(pathJoin(this.projectRepoPath, file), fileContent, {encoding: 'utf8'});
      files.push(file);
      await git.add({
        fs,
        dir     : this.projectRepoPath,
        filepath: file
      });
    }

    await git.commit({
      fs,
      dir    : this.projectRepoPath,
      author : {
        name : 'Reiki Devops Service',
        email: 'reiki.devops@users.noreply.github.com'
      },
      message: message
    });

    await this.checkOutCommitToPublic();
    // await git.add({
    //   fs,
    //   dir: this.repoPath,
    //   filepath:
    // })

    // update generate code;

  }

  async checkOutCommitToPublic(ref = 'master') {
    const commitOid = await git.resolveRef({fs, dir: this.projectRepoPath, ref});

    const files = await git.listFiles({fs, dir: this.projectRepoPath, ref});

    for (const f of files) {
      // console.log(commitOid);
      const {blob} = await git.readBlob({
        fs,
        dir     : this.projectRepoPath,
        oid     : commitOid,
        filepath: f
      });

      fse.outputFileSync(pathJoin(this.projectPublicPath, f), Buffer.from(blob));
    }

    // console.log(Buffer.from(blob).toString('utf8'));
  }

  async updateProject() {

  }

  async getProjectPublic() {
    const list = fs.readdirSync(this.projectPublicPath);

    const result: Record<string, any> = {};

    for (const it of list) {
      const stat = fs.statSync(pathJoin(this.projectPublicPath, it));

      if (stat.isFile()) {
        const fileName   = camelCase(it.replace(/^(.+?).yml/, '$1'));
        result[fileName] = load(
          fs.readFileSync(pathJoin(this.projectPublicPath, it), {encoding: 'utf8'}));
      }
    }
    return result;
  }

  static getProjectVariantPath(projectsBasePath: string, viewId: string, variantName: string) {
    return pathJoin(projectsBasePath, viewId, variantName);
  }

  static async initProjectRepoService(projectViewId: string) {
    if (!/^[a-zA-Z0-9]+$/g.exec(projectViewId)) {
      throw new Error('project view id is invalid');
    }

    const repo = new this(projectViewId);
    if (!repo.existDeployRepo()) {
      return await this.initProjectRepo(projectViewId);
    }

    return repo;
  }

  static async initProjectRepo(projectViewId: string) {
    if (!/^[a-zA-Z0-9]+$/g.exec(projectViewId)) {
      throw new Error('project view id is invalid');
    }

    const repoPath = this.getProjectVariantPath(
      this.projectsBasePath,
      projectViewId,
      ProjectRepoVariantPath.repo
    );

    // init git repo
    if (!fs.existsSync(pathJoin(repoPath, '.git'))) {
      try {
        // this.http
        await git.clone({
          fs,
          http,
          url   : `https://git.gradii.com/puff-app/${projectViewId}.git`,
          remote: 'origin',
          dir   : repoPath,
          onAuth: url => {
            return {
              username: 'readonly@gradii.com',
              password: 'e90dafa25caf36652eddd19abafedfc3c1e2fd61',
            };
          }
        });
      } catch (e) {
        console.log(e);
      }
    }

    // init deafult file
    [
      ProjectRepoVariantPath.public, ProjectRepoVariantPath.deploy,
      ProjectRepoVariantPath.generate, ProjectRepoVariantPath.deployRepo
    ].forEach(it => {
      const dirPath = this.getProjectVariantPath(this.projectsBasePath, projectViewId, it);
      if (!fs.existsSync(dirPath)) {
        fs.mkdirSync(dirPath);
      }
    });

    const codeRepo = this.getProjectVariantPath(this.projectsBasePath, projectViewId,
      ProjectRepoVariantPath.deployRepo);
    if (!fs.existsSync(pathJoin(codeRepo, '.git'))) {
      await git.clone({
        fs,
        http,
        dir   : codeRepo,
        url   : 'https://git.gradii.com/puff-deploy-repo/dummy.git',
        onAuth: url => {
          return {
            username: 'readonly@gradii.com',
            password: 'e90dafa25caf36652eddd19abafedfc3c1e2fd61',
          };
        }
      });

      await git.deleteRemote({fs, dir: codeRepo, remote: 'origin'});
      await git.addRemote({
        fs,
        dir   : codeRepo,
        remote: 'origin',
        url   : `https://git.gradii.com/puff-deploy-repo/${projectViewId}.git`
      });
    }

    // @ts-ignore
    // fse.ensureSymlinkSync(pathJoin(dummyRepoPath, 'node_modules'),
    //   pathJoin(codeRepo, 'node_modules'), 'dir');

    const repo = new this(projectViewId);
    // await repo.checkRepo();

    return repo;
  }

}
