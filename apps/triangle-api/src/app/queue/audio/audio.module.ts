import { BullModule } from '@nestjs/bull';
import { Module } from '@nestjs/common';
import { AudioService } from './audio-service';
import { AudioController } from './audio.controller';
import { AudioProcessor } from './audio.processor';

@Module({
  imports    : [
    BullModule.registerQueue({
      name             : 'audio',
      prefix           : '{prefix}',
      defaultJobOptions: {
        attempts    : 3,
        removeOnFail: false,
      },
    }),
  ],
  controllers: [AudioController],
  providers  : [AudioProcessor, AudioService],
})
export class AudioModule {
}
