/**
 * This is not a production server yet!
 * This is only a minimal backend to get started.
 */

import { config } from 'dotenv';
import { CommandFactory } from 'nest-commander';
import { CommandQueueModule } from './cli-queue/command-queue.module';

config();

async function bootstrap() {
  try {
    await CommandFactory.run(CommandQueueModule);
  } catch (e) {
    console.error('error', e);
  }
}

bootstrap();
