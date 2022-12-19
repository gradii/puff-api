/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

export interface PseudoTerminalConfig {
  /** Human-readable string which will be used to represent the terminal in the UI. */
  name: string;
  program: string;
  args: string[];
  cwd: string;
  env?: object;
  isDryRun?: boolean;
  displayCommand: string;
  isWsl: boolean;
}

export type PseudoTerminalFactory = (
  config: PseudoTerminalConfig
) => PseudoTerminal;


export interface PseudoTerminal {
  onDidWriteData?(callback: (data: string) => void): void;

  onError?(callback: (data: string) => void): void;

  onExit(callback: (code: number) => void): void;

  setCols?(cols: number): void;

  kill(): void;
}
