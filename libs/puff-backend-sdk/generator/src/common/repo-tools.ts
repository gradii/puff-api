import * as fs from 'fs';
import * as json5 from 'json5';
import * as path from 'path';
import { intersection, uniq } from 'ramda';

export class RepoTools {
  public nxJsonInfo: any;
  public angularJsonInfo: any;
  private backendProjectName: any;
  private backendProjectInfo: any;

  constructor(private repo: string) {
    if (!fs.existsSync(path.join(repo, 'nx.json'))) {
      throw new Error(`nx.json not found in repo "${repo}"`);
    }
    if (!fs.existsSync(path.join(repo, 'angular.json'))) {
      throw new Error(`angular.json not found in repo "${repo}"`);
    }
    this.initRepoInfo();
  }

  initRepoInfo() {
    this.nxJsonInfo = json5.parse(fs.readFileSync(path.join(this.repo, 'nx.json'), { encoding: 'utf8' }));
    this.angularJsonInfo = json5.parse(fs.readFileSync(path.join(this.repo, 'angular.json'), { encoding: 'utf8' }));
  }

  private findProjectNames({
                             tags = [],
                             guessNames = [],
                             builder
                           }) {
    // const nxProjects = Object.keys(this.nxJsonInfo.projects)
    const names = [];
    const mayBeNames = [];
    for (let [key, val] of Object.entries<any>(this.nxJsonInfo.projects)) {
      if (val.tags && Array.isArray(val.tags) && intersection(val.tags, tags).length > 0) {
        names.push(key);
      }
    }
    for (let [key, val] of Object.entries<any>(this.angularJsonInfo.projects)) {
      if (val.projectType === 'application') {
        const buildInfo = val?.architect?.build;
        if (buildInfo?.builder === builder) {
          names.push(key);
        }
        if (guessNames.includes(key)) {
          mayBeNames.push(key);
        }
      }
    }

    return uniq([...names, ...mayBeNames]);
  }

  getProjectInfo(name) {
    return this.angularJsonInfo.projects[name];
  }

  setBackendProject(backendName?) {
    if (!backendName) {
      backendName = this.findProjectNames({ tags: ['backend'], builder: '@nrwl/node:build', guessNames: ['api', 'backend'] }).shift();
    }
    if (!backendName) {
      throw new Error(`can't find a backend project, specify a tag "backend" in nx.json file with project tags field`);
    }
    this.backendProjectName = backendName;
    this.backendProjectInfo = this.getProjectInfo(backendName);
    return this.backendProjectInfo;
  }

  getBackendProject(name?) {
    if (this.backendProjectInfo) {
      return this.backendProjectInfo;
    } else {
      return this.setBackendProject(name);
    }
  }

  getBackendProjectMainFile() {
    if (!this.backendProjectInfo) {
      this.setBackendProject();
    }
    return this.backendProjectInfo.architect.build.options.main;
  }

  getBackendProjectSourceRoot() {
    if (!this.backendProjectInfo) {
      this.setBackendProject();
    }
    return this.backendProjectInfo.sourceRoot;
  }


}
