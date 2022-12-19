/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import {
  Column, CreatedAtColumn, DeletedAtColumn, mixinSoftDeletes, Model, MorphToColumn,
  PrimaryGeneratedColumn, Table,
  UpdatedAtColumn
} from '@gradii/fedaco';

@Table({
  tableName    : 'form_ap32nk12aajie93k',
  hidden       : ['deleted_at'],
  noPluralTable: true,
})
export class FormAp32nk12aajie93kModel extends mixinSoftDeletes(Model) {

  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  name: string;

  @Column()
  state: number;

  @MorphToColumn({
    morphTypeMap: {
      'form_ap32nk12aajie93k': FormAp32nk12aajie93kModel
    },
    type        : 'process_target_type',
    id          : 'process_target_id',
  })
  process: Promise<any>;

  @CreatedAtColumn()
  created_at: Date;

  @UpdatedAtColumn()
  updated_at: Date;

  @DeletedAtColumn()
  deleted_at: Date;
}
