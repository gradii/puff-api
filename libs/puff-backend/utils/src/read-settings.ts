/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { platform } from 'os';
import { Subject } from 'rxjs';

export interface Settings {
  canCollectData: boolean;

  isConnectUser?: boolean;

  disableAnimations?: boolean;

  showSupportPlugin?: boolean;

  installNodeManually?: boolean;

  enableDetailedStatus?: boolean;

  channel?: string;

  workspaceSchematicsDirectory?: string;

  workspaceSchematicsNpmScript?: string;

  recent: WorkspaceDefinition[];

  isWsl?: boolean;

  isWindows?: boolean;

  useNvm?: boolean;
}

export interface WorkspaceDefinition {
  path: string;

  name: string;

  favorite?: boolean;

  pinnedProjectNames: string[];
}

export function readSettings(): Settings {
  const settings: Settings = { canCollectData: false, recent: [] };

  settings.isWindows = platform() === 'win32';

  // tslint:disable-next-line
  if (settings.canCollectData === undefined) {
    settings.canCollectData = false;
  }
  // tslint:disable-next-line
  if (settings.recent === undefined) {
    settings.recent = [];
  }

  settings.recent.forEach(t => {
    // tslint:disable-next-line
    if (t.pinnedProjectNames === undefined) {
      t.pinnedProjectNames = [];
    }
  });

  if (settings.installNodeManually === undefined) {
    settings.installNodeManually = false;
  }
  if (settings.enableDetailedStatus === undefined) {
    settings.enableDetailedStatus = true;
  }
  if (settings.channel === undefined) {
    settings.channel = 'latest';
  }
  if (settings.workspaceSchematicsDirectory === undefined) {
    settings.workspaceSchematicsDirectory = 'tools/schematics';
  }
  if (settings.workspaceSchematicsNpmScript === undefined) {
    settings.workspaceSchematicsNpmScript = 'workspace-schematic';
  }
  if (settings.isWsl === undefined || platform() !== 'win32') {
    settings.isWsl = false;
  }
  if (settings.useNvm === undefined) {
    settings.useNvm = false;
  }
  // try {
  //   settings.isConnectUser = !!authUtils.getIdTokenFromStore();
  // } catch {
  //   settings.isConnectUser = false;
  // }
  return settings;
}

const storeSettingsSubject = new Subject<Settings>();
export const settingsChange$ = storeSettingsSubject.asObservable();

export function storeSettings(store: any, value: Settings) {
  store.set('settings', value);
  storeSettingsSubject.next(value);
}
