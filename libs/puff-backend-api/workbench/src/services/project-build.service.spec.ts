import * as fs from 'fs';
import git from 'isomorphic-git';


describe('project build service', () => {
  it('test status matrix', async () => {
    const result = await git.statusMatrix({
      fs,
      dir: 'storage/_workbench/projects/qejy2pzvrrkr072hqgs6/code-repo',
    });

    expect(result).toMatchSnapshot();
  });
});
