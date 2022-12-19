/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import {
  Column, CreatedAtColumn, DeletedAtColumn, Model, PrimaryGeneratedColumn, Table, UpdatedAtColumn
} from '@gradii/fedaco';

@Table({
  tableName: 'files'
})
export class FileModel extends Model {
  // @Column({
  //   type: DataType.UUID,
  //   defaultValue: DataType.UUIDV4,
  //   primaryKey: true
  // })
  @PrimaryGeneratedColumn()
  id: number;

  @Column({
    field: 'file_name'
  })
  fileName: string;

  @Column({
    field: 'original_name'
  })
  originalName: string;

  @Column({
    field : 'file_hash',
    unique: true
  })
  fileHash: string;

  @Column({
    field: 'file_path'
  })
  filePath: string;

  @Column({
    field: 'mimetype'
  })
  mimetype: string;

  @Column({
    field: 'file_type'
  })
  fileType: string;

  @Column({
    // field: 'ext'
  })
  ext: string;

  @CreatedAtColumn()
  created_at: Date;

  @UpdatedAtColumn()
  updated_at: Date;

  @DeletedAtColumn()
  deleted_at: Date = null;
}
