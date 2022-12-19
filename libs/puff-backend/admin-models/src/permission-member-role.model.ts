/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import {
  BelongsToColumn, CreatedAtColumn, DeletedAtColumn, forwardRef, Model, PrimaryGeneratedColumn,
  Table, UpdatedAtColumn
} from '@gradii/fedaco';
import { AdminUserModel } from './admin-user.model';
import { PermissionRoleModel } from './permission-role.model';

@Table({
  tableName : 'permission_member_roles',
  connection: 'devops'
})
export class PermissionMemberRoleModel extends Model {
  _table = 'permission_member_roles';

  @PrimaryGeneratedColumn()
  id: number;

  // @ForeignKey(() => AdminUserModel)
  // @Column
  @BelongsToColumn({
    related: AdminUserModel
  })
  member_id: number;

  // @ForeignKey(() => PermissionRoleModel)
  // @Column
  @BelongsToColumn({
    related: forwardRef(() => PermissionRoleModel)
  })
  permission_role: number;

  @CreatedAtColumn()
  created_at: Date;

  @UpdatedAtColumn()
  updated_at: Date;

  @DeletedAtColumn()
  deleted_at: Date = null;
}
