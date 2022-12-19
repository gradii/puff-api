import { Controller, Get } from '@nestjs/common';
import { UserModel } from '@gradii/puff-backend/common-models';

@Controller('user')
export class UserController {

  @Get('/list')
  async getList(): Promise<any[]> {
    const list = await UserModel.useConnection('ucenter').select().get();
    return list.map(it => it.toArray());
  }

}
