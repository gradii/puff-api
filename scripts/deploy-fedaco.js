#!/usr/bin/env node

/**
 * Script that builds the dev-app as a static web package that will be
 * deployed to the currently configured Firebase project.
 */

const {exec, set, cd, cp, rm, chmod} = require('shelljs');
const {join}                         = require('path');
const {glob}                         = require("glob");
const fs                             = require('fs');
const fse                            = require('fs-extra');
const format                         = require('date-fns/format');
const tar                            = require('tar');
const path                           = require('path');
const prettier                       = require('prettier')

// ShellJS should throw if any command fails.
set('-e');

/** Path to the project directory. */
const projectDirPath = join(__dirname, '../');

// Go to project directory.
cd(projectDirPath);

/** Path to the bazel-bin directory. */
const bazelBinPath = exec(`yarn -s bazel info bazel-bin`).stdout.trim();

/** Output path for the Bazel dev-app web package target. */
const webPackagePath = join(bazelBinPath, 'src/fedaco/npm_package');

/** Destination path where the web package should be copied to. */
const distPath = join(projectDirPath, 'dist/releases/fedaco');

fse.ensureDirSync(distPath);

// Build web package output.
exec('yarn -s bazel build //src/fedaco:npm_package --config=snapshot');

// Clear previous deployment artifacts.
rm('-Rf', distPath);

// Copy the web package from the bazel-bin directory to the project dist
// path. This is necessary because the Firebase CLI does not support deployment
// of a public folder outside of the "firebase.json" file.
cp('-R', webPackagePath, distPath);

// Bazel by default marks output files as `readonly` to ensure hermeticity. Since we moved
// these files out of the `bazel-bin` directory, we should make them writable. This is necessary
// so that subsequent runs of this script can delete old contents from the deployment dist folder.
chmod('-R', 'u+w', distPath);

// Run the Firebase CLI to deploy the hosting target.
// exec(`yarn -s firebase deploy --only hosting`);


//build devops
async function build() {
  let files = glob.sync(`${distPath}/**/*.js`, {nodir: true});
  files.forEach(file => {
    try {
      let content = fs.readFileSync(file, 'utf8')
        .replace(/^\/\/# sourceMappingURL=.+?$/mg, '')
        .replace(/\/\*[\s\S]*?\*\/|([^\\:]|^)\/\/.*$/gm, '$1')

      content = prettier.format(content, {
        parser: 'espree',
        trailingComma: "es5",
        tabWidth: 2,
        semi: false,
        singleQuote: true,
      })

      fs.writeFileSync(file, content, 'utf8');
    } catch (e) {
    }
  })

  files = glob.sync(`${distPath}/**/*.map`, {nodir: true})

  files.forEach(file => {
    fs.unlinkSync(file);
  })


  const dateString = format(new Date, 'yyyyMMdd_HHmmss')


  const fileMap = [
    {
      key   : 'fedaco-npm-pkg',
      cwd   : distPath,
      source: ['./'],
      output: `dist/build-tar/{key}_${dateString}.tgz`
    },
  ];

  const buildTarDir = 'dist/build-tar';

  if (!fs.existsSync(buildTarDir)) {
    fs.mkdirSync(buildTarDir);
  }

  fse.emptyDirSync(buildTarDir);


  for (const val of fileMap) {
    await tar.c(
      {
        gzip  : true,
        file  : val.output.replace('{key}', val.key),
        prefix: val.key,
        cwd   : val.cwd,
      }, val.source
    )

    console.log(`${val.key} .. tarball has been created ..`);
  }
}

try {
  build().then();
} catch (e) {
  throw e
}
