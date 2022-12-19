const { convert } = require('tsconfig-to-swcconfig');

const config = convert('tsconfig.base.json', process.cwd(), {
  // more swc config to override...
  minify: true,
});

console.log(JSON.stringify(config, undefined, '  '));
