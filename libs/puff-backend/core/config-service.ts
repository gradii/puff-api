/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */
import { Injectable } from '@nestjs/common';


@Injectable()
export class ConfigService {
  private config: any;

  constructor() {
    this.config = {};
  }

  get(key: string) {
    return this.config[key];
  }

  set(key: string, value: string | number | null) {
    this.config[key] = value;
  }

  public setConfig(config: any) {
    this.config = config;
  }

  public getConfig() {
    return this.config;
  }
}
