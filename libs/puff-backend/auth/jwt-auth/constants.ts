/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

export const jwtConstants = {
  secret: '51grh8d6p2'
};

export const roleConstans = {
  SUPER_ADMIN: 0, // 超级管理员
  ADMIN      : 1, // 管理员
  DEVELOPER  : 2, // 开发者（和测试、运营具有同一权限，若提升为 RBAC 1 以上，则可酌情分开）
  HUMAN      : 3 // 普通用户
};
