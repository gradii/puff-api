import { Generate } from '../generate';

export class GenerateSwagger extends Generate {
  filename = ''
  constructor(public ctx: any) {
    super();
  }
}
