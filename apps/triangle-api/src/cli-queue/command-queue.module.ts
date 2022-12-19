import { HttpModule } from '@nestjs/axios';
import { Module } from '@nestjs/common';
import { AudioModule } from '../app/queue/audio/audio.module';

@Module({
  imports  : [
    AudioModule,
    HttpModule
  ],
  providers: [
  ],
})
export class CommandQueueModule {
}
