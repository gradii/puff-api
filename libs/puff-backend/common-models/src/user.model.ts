/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import {
  Column, CreatedAtColumn, DeletedAtColumn, HasManyColumn, mixinSoftDeletes, Model,
  PrimaryGeneratedColumn, Table, UpdatedAtColumn
} from '@gradii/fedaco';
import { WorkflowModel } from './process-models/workflow.model';

@Table({
  tableName: 'user',
  hidden: ['password', 'created_at', 'updated_at', 'deleted_at'],
  connection: 'ucenter'
})
export class UserModel extends mixinSoftDeletes(Model) {
  // _table = 'workflows';

  @PrimaryGeneratedColumn()
  id;

  @Column()
  name: string;

  @Column({
  })
  password: number;

  @Column()
  display_name: string;

  @HasManyColumn({
    related: WorkflowModel,
    foreignKey: 'created_by',
    localKey: 'id'
  })
  workflows;

  @CreatedAtColumn()
  created_at: Date;

  @UpdatedAtColumn()
  updated_at: Date;

  @DeletedAtColumn()
  deleted_at: Date;
}
