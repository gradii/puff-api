/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { encryptPassword, err } from '@gradii/puff-backend/core';
import { UserDao } from '@gradii/puff-backend/dao';
import { Injectable } from '@nestjs/common';
import { JwtService, JwtVerifyOptions } from '@nestjs/jwt';
import { uniq } from 'ramda';


@Injectable()
export class AuthService {
  constructor(
    private readonly usersService: UserDao,
    private readonly jwtService: JwtService
  ) {
  }

  // JWT验证 - Step 2: 校验用户信息
  async validateUser(username: string, password: string): Promise<any> {
    // console.log('JWT验证 - Step 2: 校验用户信息');
    const user = await this.usersService.findOne(username);
    if (user) {
      const hashedPassword = user.passwd;
      const salt           = user.passwdSalt;
      const hashPassword   = encryptPassword(password, salt);
      if (hashedPassword === hashPassword) {
        // 密码正确
        return {
          code: 1,
          user
        };
      } else {
        // 密码错误
        return {
          code: 2,
          user: null
        };
      }
    }
    // 查无此人
    return {
      code: 3,
      user: null
    };
  }

  // JWT验证 - Step 3: 处理 jwt 签证
  async certificate(user: { id: number, accountName: string, realName: string, role: string }) {
    if (!(user.id > 0)) {
      throw err
        `token 异常`;
    }
    const permissionCodes = await this.usersService.getPerssionCodes(user.id);
    const payload         = {
      id             : user.id,
      accountName    : user.accountName,
      realName       : user.realName,
      role           : user.role,
      permissionCodes: uniq(permissionCodes.map(it => it.permissionCode))
    };


    // console.log('JWT验证 - Step 3: 处理 jwt 签证', `payload: ${JSON.stringify(payload)}`);
    try {
      const accessToken = this.jwtService.sign(payload);
      return {
        token: {
          access_token: accessToken
        }
      };
    } catch (error) {
      throw err`账号或密码错误`;
    }
  }

  async decode(token: string) {
    return this.jwtService.decode(token);
  }

  async verify(token: string, options?: JwtVerifyOptions) {
    return this.jwtService.verifyAsync(token, options);
  }
}
