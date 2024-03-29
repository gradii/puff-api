/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

/**
 * Get environment variate in number type.
 * If the environment variate is undefined or not a valid number, return the default value.
 * @param name Environment variate
 * @param defaults (Optional) Default value
 */
export function getEnvNum(name: string): number | undefined;
export function getEnvNum(name: string, defaults: number): number;
export function getEnvNum(name: string, defaults?: number): number | undefined {
  const v = process.env[name];
  if (v === undefined) {
    return defaults;
  }
  const n = Number(v);
  return Object.is(n, NaN) ? defaults : n;
}

/**
 * Get environment variate in string type.
 * If the environment variate is undefined, return the default value.
 * @param name Environment variate
 * @param defaults (Optional) Default value
 */
export function getEnvStr(name: string): string | undefined;
export function getEnvStr(name: string, defaults: string): string;
export function getEnvStr(name: string, defaults?: string): string | undefined {
  const v = process.env[name];
  if (v === undefined) {
    return defaults;
  }
  return v;
}

export function getEnv(name: string): string | undefined;
export function getEnv(name: string, defaults: string): string;
export function getEnv(name: string, defaults?: string): string | undefined {
  const v = process.env[name];
  if (v === undefined) {
    return defaults;
  }
  return v;
}

/**
 * Get environment variate in string type.
 * If the environment variate is undefined, return the default value.
 * @param name Environment variate
 * @param defaults (Optional) Default value
 */
export function getEnvStrEnum<T>(name: string): T | undefined;
export function getEnvStrEnum<T>(name: string, defaults: T): T;
export function getEnvStrEnum<T>(name: string, defaults?: T): T | undefined {
  const v = process.env[name];
  if (v === undefined) {
    return defaults;
  }
  return v as any;
}

/**
 * Get environment variate in boolean type, supported values without case sensitive:
 *   Truly: 'true', 'yes', 'on', 'open', 't', 'y', '1'.
 *   Falsely: 'false', 'no', 'off', 'close', 'f', 'n', '0'.
 * If the environment variate is undefined or unsupported, return the default value.
 * @param name Environment variate
 * @param defaults (Optional) Default value
 */
export function getEnvBool(name: string): boolean | undefined;
export function getEnvBool(name: string, defaults: boolean): boolean;
export function getEnvBool(name: string, defaults?: boolean): boolean | undefined {
  const v = process.env[name];
  if (v === undefined) {
    return defaults;
  }
  switch (v.toUpperCase()) {
    case 'TRUE':
    case 'YES':
    case 'ON':
    case 'OPEN':
    case 'T':
    case 'Y':
    case '1':
      return true;
    case 'FALSE':
    case 'NO':
    case 'OFF':
    case 'CLOSE':
    case 'F':
    case 'N':
    case '0':
      return false;
    default:
      return defaults;
  }
}
