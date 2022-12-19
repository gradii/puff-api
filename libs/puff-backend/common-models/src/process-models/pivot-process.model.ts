/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import {
  Column, CreatedAtColumn, DeletedAtColumn, mixinSoftDeletes, Model, PrimaryGeneratedColumn, Table,
  UpdatedAtColumn
} from '@gradii/fedaco';

@Table({
  tableName: 'pivot_process',
  hidden   : ['deleted_at']
})
export class PivotProcessModel extends mixinSoftDeletes(Model) {

  @PrimaryGeneratedColumn()
  id;

  @Column()
  name: string;

  @CreatedAtColumn()
  created_at;

  @UpdatedAtColumn()
  updated_at;

  @DeletedAtColumn()
  deleted_at;
}
