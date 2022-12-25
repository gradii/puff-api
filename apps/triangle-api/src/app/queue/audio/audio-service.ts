import { Injectable } from '@nestjs/common';
import { InjectQueue } from '@nestjs/bull';


@Injectable()
export class AudioService {
  constructor(@InjectQueue('audio')
              private audioQueue: any) {
  }

  async listFailed() {
    return this.audioQueue.getFailed();
  }
}
