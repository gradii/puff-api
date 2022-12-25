import { DatabaseConfig } from '@gradii/fedaco';
import { WorkbenchModule } from '@gradii/puff-backend-api/workbench';
import { WorkflowModule } from '@gradii/puff-backend-api/workflow';
import { FormMetadataModule } from '@gradii/puff-backend/form-metadata';
import { BullModule } from '@nestjs/bull';
import { Module, OnModuleInit } from '@nestjs/common';
import { UcenterModule } from '../ucenter/ucenter.module';

import { AppController } from './app.controller';
import { AudioModule } from './queue/audio/audio.module';
import { V1Module } from './v1/v1.module';

@Module({
  imports    : [
    V1Module,

    UcenterModule,
    WorkflowModule,
    FormMetadataModule,
    WorkbenchModule,

    BullModule.forRoot({
      redis: {
        host    : process.env.REDIS_HOST,
        port    : +process.env.REDIS_PORT || 6379,
        password: process.env.REDIS_PASSWORD,
      },
    }),
    AudioModule,
  ],
  controllers: [AppController],
  providers  : [],
})
export class AppModule implements OnModuleInit {
  async onModuleInit(): Promise<any> {

    const db = new DatabaseConfig();
    db.addConnection({
      'driver'  : 'mysql',
      'database': 'triangle',
      'host'    : process.env.DB_HOST,
      'port'    : +process.env.DB_PORT,
      'username': process.env.DB_USER_NAME,
      'password': process.env.DB_PASSWORD,
      ssl: {minVersion: 'TLSv1.2', rejectUnauthorized: true}
    });

    db.addConnection({
      'driver'  : 'mysql',
      'database': 'devops',
      'host'    : process.env.DB_HOST,
      'port'    : +process.env.DB_PORT,
      'username': process.env.DB_USER_NAME,
      'password': process.env.DB_PASSWORD,
      ssl: {minVersion: 'TLSv1.2', rejectUnauthorized: true}
    }, 'devops');

    db.addConnection({
      'driver'  : 'mysql',
      'database': 'ucenter',
      'host'    : process.env.DB_HOST,
      'port'    : +process.env.DB_PORT,
      'username': process.env.DB_USER_NAME,
      'password': process.env.DB_PASSWORD,
      ssl: {minVersion: 'TLSv1.2', rejectUnauthorized: true}
    }, 'ucenter');

    db.bootFedaco();
    db.setAsGlobal();

    try {
      const list = await db.getConnection('default').select('show tables;', []);
    } catch (e) {
      console.log(e);
    }

  }
}
