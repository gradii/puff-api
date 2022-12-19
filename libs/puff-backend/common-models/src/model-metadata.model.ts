/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import {
  Column, CreatedAtColumn, DeletedAtColumn, mixinSoftDeletes, Model, PrimaryGeneratedColumn, Table, UpdatedAtColumn
} from '@gradii/fedaco';

@Table({
  tableName: 'model-metadata',
})
export class ModelMetadataModel extends mixinSoftDeletes(Model) {
  // _table = 'workflows';

  @PrimaryGeneratedColumn()
  id: number;

  @Column({
    field: 'schema_id'
  })
  schemaId: number;

  @Column({
    field: 'schema_uid'
  })
  schemaUid: string;

  @Column({
    field: 'schema_type'
  })
  schemaType: string;

  @Column({
    field: 'workflow_id'
  })
  workflowId: number;

  @CreatedAtColumn()
  created_at: Date;

  @UpdatedAtColumn()
  updated_at: Date;

  @DeletedAtColumn()
  deleted_at: Date;
}
