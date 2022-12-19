/**
 *
 */

import { cloneFsRepo } from '@gradii/puff-backend-sdk/generator';
import * as fs from 'fs';
import * as fse from 'fs-extra';
import * as path from 'path';
import { difference } from 'ramda';
import { generateRepoPath } from './common.test';

const root      = process.cwd();
const dummyRepo = path.join(root, 'storage/_workbench/dummy-repo');

describe('test generate', () => {
  const tempProjectDir = generateRepoPath();

  beforeAll(async () => {

    await fse.ensureDirSync(tempProjectDir);
    const dirExist = await fse.pathExists(path.join(dummyRepo, '.git'));
    expect(dirExist).toBeTruthy();
  });

  afterAll(async () => {
    await fse.remove(tempProjectDir);
  });

  it('clone a repo from dummy repo', async () => {
    // fs.copyFileSync()
    await cloneFsRepo(dummyRepo, tempProjectDir);

    const outputGitDir = path.join(tempProjectDir, '.git');
    const existDir = fs.existsSync(outputGitDir);

    const outputdotGitFiles = fs.readdirSync(outputGitDir);
    // expect(dummyFiles).toEqual(tempFiles);
    expect(existDir).toBe(true);
    expect(outputdotGitFiles.length).toBeGreaterThan(0);
    expect(outputdotGitFiles).toContain('refs');
    const diff = difference(['config', 'description', 'HEAD', 'hooks', 'index', 'info', 'logs', 'objects', 'refs'], outputdotGitFiles);
    expect(diff.length).toBe(0);

  });

  it('test clone checkout config', async () => {
    try {
      await cloneFsRepo(dummyRepo, tempProjectDir, { ref: 'develop' });
    } catch (e) {
      /**
       * {
       *   'caller': 'git.checkout',
       *   'code'  : 'NotFoundError',
       *   'data'  : {
       *     'what': 'origin/develop'
       *   },
       *   'name'  : 'NotFoundError'
       * })
       */
      expect(e.name).toBe('NotFoundError');
      expect(e.code).toBe('NotFoundError');
    }
  });
});
