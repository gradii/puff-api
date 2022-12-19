/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import {
  BelongsToColumn, Column, CreatedAtColumn, DeletedAtColumn, forwardRef, HasManyColumn, JsonColumn,
  mixinSoftDeletes, Model, PrimaryGeneratedColumn, Table, UpdatedAtColumn
} from '@gradii/fedaco';
import { UserModel } from '../user.model';
import { ProcessModel } from './process.model';

@Table({
  tableName: 'workflow',
  hidden   : ['deleted_at']
})
export class WorkflowModel extends mixinSoftDeletes(Model) {

  @PrimaryGeneratedColumn()
  id;

  @Column()
  name: string;

  @JsonColumn()
  config: any;

  @BelongsToColumn({
    related   : forwardRef(() => UserModel),
    foreignKey: 'created_by',
    ownerKey  : 'id',
  })
  createdBy;

  @HasManyColumn({
    related   : forwardRef(() => ProcessModel),
    foreignKey: 'workflow_id',
    localKey  : 'id'
  })
  processes;

  @CreatedAtColumn()
  created_at;

  @UpdatedAtColumn()
  updated_at;

  @DeletedAtColumn()
  deleted_at;
}
