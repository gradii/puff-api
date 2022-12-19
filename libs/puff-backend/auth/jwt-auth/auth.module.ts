/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { UserDao } from '@gradii/puff-backend/dao';
import { environment } from '@gradii/puff-backend/environment';
import { Module } from '@nestjs/common';
import { JwtModule } from '@nestjs/jwt';
import { PassportModule } from '@nestjs/passport';
import { JwtStrategy } from './jwt.strategy';
import { LocalStrategy } from './local.strategy';
import { AuthService } from './services/auth.service';

@Module({
  imports  : [
    PassportModule.register({defaultStrategy: 'jwt'}),
    JwtModule.register({
      secret     : environment.jwtSecret,
      signOptions: {expiresIn: '5m'} // 默认access_token有效时间
    }),
    // DatabaseModule
  ],
  providers: [AuthService, LocalStrategy, JwtStrategy, UserDao],
  exports  : [AuthService, UserDao]
})
export class AuthModule {
}
