/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { FileUtils, readJsonFile } from '@gradii/puff-backend/utils';
import { Commands } from './commands';
import { createDetailedStatusCalculator } from './detailed-status-calculator';
import { PseudoTerminalFactory } from './interface';
// import { Telemetry } from '../telemetry';

let commandRunIndex = 0;

export interface RunResult {
  id: string;
}

export enum ExecutableType {
  add = 'add',
  new = 'new',
  generate = 'generate',
  npm = 'npm',
  ng = 'ng'
}


export class Executable {
  private readonly isNvm: boolean;

  private _path = '';
  private _name: string;

  get name() {
    return this.isNvm ? 'nvm' : this._name;
  }

  set name(name: string) {
    this._name = name;
  }

  get path() {
    return this.isNvm ? `nvm exec ${this._path}` : this._path;
  }

  set path(path: string) {
    this._path = path;
  }

  hasPath(): boolean {
    return this._path !== '';
  }

  constructor(
    name: string,
    // private readonly telemetry: Telemetry,
    private readonly buildTerminal: PseudoTerminalFactory,
    private readonly fileUtils: FileUtils,
    private readonly commands: Commands
  ) {
    this._name = name;
    this.isNvm = fileUtils.supportsNvm() && fileUtils.useNvm();
  }

  run(
    type: ExecutableType,
    cwd: string,
    cmds: string[],
    addToRecent: boolean = true,
    env: object = {},
  ): RunResult {
    if (!this.hasPath()) {
      throw new Error('setPath of this executable before running');
    }

    const workspace = workspaceName(type, cwd);
    const statusCalculator = createDetailedStatusCalculator(cwd, cmds);

    const id = `${this.name} ${cmds.join(' ')} ${commandRunIndex++}`;
    let command = `${this.path} ${cmds.join(' ')}`;

    // We currently don't support the windows implementation of NVM.
    if (this.isNvm) {
      command = `nvm exec ${command}`;
      cmds = ['exec', this.path, ...cmds];
    }

    const factory = () => {
      const start = process.hrtime();

      const commandRunning = this.buildTerminal({
        displayCommand: command,
        name: id,
        program: this.path,
        args: cmds,
        cwd,
        env,
        isDryRun: !addToRecent,
        isWsl: this.fileUtils.isWsl()
      });

      if (commandRunning.onDidWriteData) {
        commandRunning.onDidWriteData(data => {
          this.commands.addOut(id, data);
        });
      }

      if (commandRunning.onError) {
        commandRunning.onError(data => {
          this.commands.addOut(id, data);
        });
      }

      commandRunning.onExit(code => {
        const seconds = process.hrtime(start)[0];
        // don't record dry runs
        // if (addToRecent) {
        //   this.telemetry.commandRun(type, seconds);
        // }
        this.commands.setFinalStatus(id, code === 0 ? 'successful' : 'failed');
      });

      return commandRunning;
    };

    this.commands.addCommand(
      type,
      id,
      workspace,
      command,
      factory,
      statusCalculator,
      addToRecent
    );
    this.commands.startCommand(id);

    return { id };
  }
}

function workspaceName(type: ExecutableType, cwd: string): string | null {
  let name = null;

  if (type !== ExecutableType.new) {
    const json = readJsonFile('./package.json', cwd).json;
    name = json.name;
  }

  return name;
}
