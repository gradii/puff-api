/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import {
  BelongsToManyColumn, Column, CreatedAtColumn, DeletedAtColumn, forwardRef, Model,
  PrimaryGeneratedColumn, Table, UpdatedAtColumn
} from '@gradii/fedaco';
import { PermissionRoleModel } from './permission-role.model';

@Table({
  tableName : 'admin_users',
  connection: 'devops'
})
export class AdminUserModel extends Model {
  _table = 'admin_users';

  @PrimaryGeneratedColumn()
  id: number;

  @Column({
    field: 'account_name'
  })
  accountName: string;

  @Column({
    field: 'real_name'
  })
  realName: string;

  @Column({
    field: 'passwd'
  })
  passwd: string;

  @Column({
    field: 'passwd_salt'
  })
  passwdSalt: string;

  @Column({
    field: 'mobile'
  })
  mobile: string;

  @Column({
    field: 'role'
  })
  role: string;

  @Column({
    field: 'user_status'
  })
  userStatus: string;

  @Column({
    field: 'created_by'
  })
  createdBy: string;

  @Column({
    field: 'updated_by'
  })
  updatedBy: string;

  // @BelongsToMany(() => PermissionRoleModel, () => PermissionMemberRoleModel)
  @BelongsToManyColumn({
    related        : forwardRef(() => PermissionRoleModel),
    table          : 'permission_member_roles',
    foreignPivotKey: 'member_id',
    relatedPivotKey: 'permission_role'
  })
  permissionRoles: PermissionRoleModel[];

  @CreatedAtColumn()
  created_at: Date;

  @UpdatedAtColumn()
  updated_at: Date;

  @DeletedAtColumn()
  deleted_at: Date = null;
  //
  // @Column({
  //   field: 'file_hash'
  // })
  // fileHash: string;
  //
  // @Column({
  //   field: 'content'
  // })
  // content: string;
  //
  // @CreatedAt
  // created_at: Date;
  //
  // @UpdatedAt
  // updated_at: Date;
  //
  // @DeletedAt
  // deleted_at: Date;

}
