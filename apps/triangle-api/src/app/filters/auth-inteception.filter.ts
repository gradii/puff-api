import { ArgumentsHost, Catch, HttpException } from '@nestjs/common';
import { BaseExceptionFilter } from './base-exception.filter';

@Catch(HttpException)
export class AuthExceptionFilter extends BaseExceptionFilter {
  constructor() {
    super();
    console.log('授权异常构造函数初始化' + new Date().toISOString());
  }

  catch(exception: HttpException, host: ArgumentsHost) {
    // exception.exceptionCode = 40002;
    console.log('授权异常执行' + new Date().toISOString());
    // this.writeToClient(host, exception);
  }
}
