/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import {
  BelongsToManyColumn, Column, CreatedAtColumn, DeletedAtColumn, forwardRef, Model, PrimaryGeneratedColumn, Table,
  UpdatedAtColumn
} from '@gradii/fedaco';
import { PermissionRoleModel } from './permission-role.model';

@Table({
  tableName : 'permission_codes',
  connection: 'devops'
})
export class PermissionCodeModel extends Model {
  _table = 'permission_codes';

  @PrimaryGeneratedColumn()
  id: number;

  @Column({
    field: 'permission_code'
  })
  permissionCode: string;

  @Column({
    field: 'description'
  })
  description: string;

  // () => PermissionRoleModel, () => PermissionRoleCodeModel
  @BelongsToManyColumn({
    related: forwardRef(() => PermissionRoleModel),
    table: 'permission_role_codes',
    foreignPivotKey: 'permission_code_id',
    relatedPivotKey: 'permission_role_id',
  })
  permissionRoles: PermissionRoleModel[];

  @CreatedAtColumn()
  created_at: Date;

  @UpdatedAtColumn()
  updated_at: Date;

  @DeletedAtColumn()
  deleted_at: Date = null;

}
