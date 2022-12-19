/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { FileUtils, readJsonFile } from '@gradii/puff-backend/utils';
import { Commands } from './commands';
import { createDetailedStatusCalculator } from './detailed-status-calculator';
import { PseudoTerminalFactory } from './interface';

let commandRunIndex = 0;

export const commands = new Commands(5, 15);

export function runCommand(
  type: string,
  cwd: string,
  programName: string,
  program: string,
  cmds: string[],
  pseudoTerminalFactory: PseudoTerminalFactory,
  fileUtils: FileUtils,
  addToRecent: boolean = true
) {
  const workspace =
    type === 'new' ? null : readJsonFile('./package.json', cwd).json.name;
  const id = `${program} ${cmds.join(' ')} ${commandRunIndex++}`;
  let command = `${programName} ${cmds.join(' ')}`;

  const supportsNVM = fileUtils.isWsl()
    ? fileUtils.wslSupportsNvm()
    : Boolean(process.env.NVM_DIR);

  // We currently don't suppor the windows implementation of NVM.
  if (supportsNVM && fileUtils.useNvm()) {
    command = `nvm exec ${command}`;
    cmds = ['exec', program, ...cmds];
    program = 'nvm';
  }

  const factory = () => {
    const commandRunning = pseudoTerminalFactory({
      displayCommand: command,
      name: id,
      program,
      args: cmds,
      cwd,
      isDryRun: !addToRecent,
      isWsl: fileUtils.isWsl()
    });
    if (commandRunning.onDidWriteData) {
      commandRunning.onDidWriteData(data => {
        commands.addOut(id, data);
      });
    }
    commandRunning.onExit(code => {
      commands.setFinalStatus(id, code === 0 ? 'successful' : 'failed');
    });
    return commandRunning;
  };

  const statusCalculator = createDetailedStatusCalculator(cwd, cmds);

  commands.addCommand(
    type,
    id,
    workspace,
    command,
    factory,
    statusCalculator,
    addToRecent
  );
  commands.startCommand(id);
  return { id };
}
