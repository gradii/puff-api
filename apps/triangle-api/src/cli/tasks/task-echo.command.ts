import { HttpService } from '@nestjs/axios';
import { Command, CommandRunner } from 'nest-commander';

@Command({name: 'echo', description: 'Echo a message'})
export class TaskEchoCommand implements CommandRunner {
  constructor(
    private readonly http: HttpService
  ) {
  }

  async run(inputs: string[], options: Record<string, string>): Promise<void> {
    console.log('Downloading icon...');
  }
}
