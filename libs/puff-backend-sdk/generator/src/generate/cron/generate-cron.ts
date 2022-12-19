export class GenerateCron {

  constructor(public ctx = {
    dependencies   : [],
    npmDependencies: {}
  }) {
  }


  _preGenerate() {
    this.ctx.dependencies    = ['@nestjs/cqrs', '@nestjs/schedule'];
    this.ctx.npmDependencies = {
      '@nestjs/cqrs'    : '^7.0.1',
      '@nestjs/schedule': '^0.4.1'
    };
  }

  generate() {

  }

  _postGenerate() {

  }
}
