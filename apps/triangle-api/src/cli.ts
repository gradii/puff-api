/**
 * This is not a production server yet!
 * This is only a minimal backend to get started.
 */

import { config } from 'dotenv';
import { CommandFactory } from 'nest-commander';
import { CommandModule } from './cli/command.module';

config();

async function bootstrap() {
  try {
    await CommandFactory.run(CommandModule);
  } catch (e) {
    console.error('error', e);
  }
}

bootstrap();
