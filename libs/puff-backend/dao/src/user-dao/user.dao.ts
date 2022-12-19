/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { AdminUserModel } from '@gradii/puff-backend/admin-models';
import { PermissionCodeModel } from '@gradii/puff-backend/admin-models';
import { encryptPassword, err, makeSalt } from '@gradii/puff-backend/core';
import { Injectable } from '@nestjs/common';

@Injectable()
export class UserDao {

  constructor(/*@Inject(Sequelize) private sequelize: Sequelize,
              @InjectModel(AdminUserModel) private adminUserModel: typeof AdminUserModel*/) {
  }

  /**
   * 查询是否有该用户
   * @param username 用户名
   */
  async findOne(username: string): Promise<AdminUserModel | undefined> {

    try {
      const user = await AdminUserModel.createQuery().where(
        {
          account_name: `${username}`
        }
      ).orderBy('updated_at', 'desc').first();
      // 若查不到用户，则 user === undefined
      return user;
    } catch (error) {
      console.error(error);
      return void 0;
    }
  }

  async resetpassword(userId: number, accountName: string, password: string) {
    const salt    = makeSalt(); // 制作密码盐
    const hashPwd = encryptPassword(password, salt); // 加密密码
    return AdminUserModel.createQuery().where({
      id         : userId,
      account_name: accountName
    }).update({
      passwd    : hashPwd,
      passwdSalt: salt
    });
  }

  async getPerssionCodes(userId: number): Promise<PermissionCodeModel[]> {
    try {
      // @ts-ignore
      const user = await AdminUserModel.createQuery().orderBy('updated_at', 'desc').find(userId);
      /*{
        include: [
          {
            model  : PermissionRoleModel,
            include: [PermissionCodeModel]
            // through: {attributes: []},
          },
          'permissionRoles'
        ],
        where  : {
          id: userId
        },
        order  : [['updated_at', 'desc']]
      }*/
      if (!user) {
        return [];
      }

      const rst: PermissionCodeModel[] = [];
      for (const item of (await user.permissionRoles)) {
        const permissionCodes = (await item.permissionCodes);
        permissionCodes.forEach(it => {
          rst.push(it);
        });
      }

      return rst;
    } catch (error) {
      console.error(error);
      return void 0;
    }
  }

  /**
   * 注册
   * @param requestBody 请求体
   */
  async register(requestBody: any): Promise<any> {
    const {accountName, realName, password, repassword, mobile} = requestBody;
    if (password !== repassword) {
      throw err`两次密码输入不一致`;
    }
    const user = await this.findOne(accountName);
    if (user) {
      throw err`用户已存在`;
    }
    const salt    = makeSalt(); // 制作密码盐
    const hashPwd = encryptPassword(password, salt); // 加密密码

    try {
      // await this.sequelize.query(registerSQL, { logging: false });
      const data = {
        accountName: accountName,
        realName   : realName,
        passwd     : hashPwd,
        passwdSalt : salt,
        mobile     : mobile,
        userStatus : 1,
        role       : 3,
        createdBy  : 0
      };
      await AdminUserModel.createQuery().upsert(data, ['accountName']);

      return {
        code: 200,
        msg : 'Success'
      };
    } catch (error) {
      return {
        code: 503,
        msg : `Service error: ${error}`
      };
    }
  }
}
