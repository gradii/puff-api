/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { BelongsToColumn, CreatedAtColumn, DeletedAtColumn, Model, PrimaryGeneratedColumn, Table, UpdatedAtColumn } from '@gradii/fedaco';
import { PermissionCodeModel } from './permission-code.model';
import { PermissionRoleModel } from './permission-role.model';

@Table({
  tableName : 'permission_role_codes',
  connection: 'devops'
})
export class PermissionRoleCodeModel extends Model {

  @PrimaryGeneratedColumn()
  id: number;

  // @ForeignKey(() => PermissionRoleModel)
  // @Column
  @BelongsToColumn({
    related: PermissionRoleModel
  })
  permission_role_id: number;

  // @ForeignKey(() => PermissionCodeModel)
  // @Column
  @BelongsToColumn({
    related: PermissionCodeModel
  })
  permission_code_id: number;

  @CreatedAtColumn()
  created_at: Date;

  @UpdatedAtColumn()
  updated_at: Date;

  @DeletedAtColumn()
  deleted_at: Date = null;
}
