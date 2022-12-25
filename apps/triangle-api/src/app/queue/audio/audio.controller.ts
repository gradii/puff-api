import { InjectQueue } from '@nestjs/bull';
import { Controller, Get, Post } from '@nestjs/common';
// import { Queue } from 'bull';
import { AudioService } from './audio-service';

@Controller('audio')
export class AudioController {
  constructor(
    @InjectQueue('audio') private readonly audioQueue: any,
    private auditService: AudioService
  ) {
  }

  @Post('transcode')
  async transcode() {
    await this.audioQueue.add('transcode', {
      file: 'audio.mp3',
    });
  }

  @Get('list-failed')
  async listFailed() {
    const list = await this.auditService.listFailed();
    //
    // for (const it of list) {
    //   await it.retry();
    // }

    return list;
  }
}
