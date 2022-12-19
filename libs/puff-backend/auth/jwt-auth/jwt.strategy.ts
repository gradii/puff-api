/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { environment } from '@gradii/puff-backend/environment';
import { Injectable } from '@nestjs/common';
import { PassportStrategy } from '@nestjs/passport';
import { ExtractJwt, Strategy } from 'passport-jwt';

@Injectable()
export class JwtStrategy extends PassportStrategy(Strategy) {
  constructor() {
    super({
      jwtFromRequest  : ExtractJwt.fromAuthHeaderAsBearerToken(),
      ignoreExpiration: false,
      secretOrKey     : environment.jwtSecret
    });
  }

  // JWT验证 - Step 4: 被守卫调用
  async validate(payload: any) {
    // console.log(`JWT验证 - Step 4: 被守卫调用`);
    return {
      userId         : payload.id,
      accountName    : payload.accountName,
      realName       : payload.realName,
      role           : payload.role,
      permissionCodes: payload.permissionCodes
    };
  }
}
