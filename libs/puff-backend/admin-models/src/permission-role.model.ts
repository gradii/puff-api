/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import {
  BelongsToManyColumn, Column, CreatedAtColumn, DeletedAtColumn, forwardRef, Model,
  PrimaryGeneratedColumn, Table, UpdatedAtColumn
} from '@gradii/fedaco';
import { AdminUserModel } from './admin-user.model';
import { PermissionCodeModel } from './permission-code.model';


@Table({
  tableName : 'permission_roles',
  connection: 'devops'
})
export class PermissionRoleModel extends Model {
  _table = 'permission_roles';

  @PrimaryGeneratedColumn()
  id: number;

  @Column({
    // field: 'role_code'
  })
  roleCode: string;

  @Column()
  name: string;

  @Column()
  description: string;

  // () => PermissionCodeModel, () => PermissionRoleCodeModel
  @BelongsToManyColumn({
    related        : forwardRef(() => PermissionCodeModel),
    table          : 'permission_role_codes',
    foreignPivotKey: 'permission_role_id',
    relatedPivotKey: 'permission_code_id'
  })
  permissionCodes: PermissionCodeModel[];

  // @BelongsToMany(() => AdminUserModel, () => PermissionMemberRoleModel)
  @BelongsToManyColumn({
    related        : forwardRef(() => AdminUserModel),
    table          : 'permission_member_roles',
    foreignPivotKey: 'permission_role',
    relatedPivotKey: 'member_id',
  })
  members: AdminUserModel[];

  @CreatedAtColumn()
  created_at: Date;

  @UpdatedAtColumn()
  updated_at: Date;

  @DeletedAtColumn()
  deleted_at: Date = null;

}
