import * as path from 'path';


export function generateRepoPath() {
  const root = process.cwd();
  return path.join(root, 'tmp/projects', 'test-generate', Math.random().toString(36).substring(2));
}
