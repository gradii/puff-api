/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

export function randomString(length: number, useUppercase = false) {
  let result             = '';
  const characters       = useUppercase ?
    'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789' :
    'abcdefghijklmnopqrstuvwxyz0123456789';
  const charactersLength = characters.length;
  for (let i = 0; i < length; i++) {
    result += characters.charAt(Math.floor(Math.random() * charactersLength));
  }
  return result;
}
