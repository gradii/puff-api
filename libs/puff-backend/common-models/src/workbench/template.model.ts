/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import {
  Column, CreatedAtColumn, DeletedAtColumn, Model, PrimaryGeneratedColumn, Table, UpdatedAtColumn
} from '@gradii/fedaco';

@Table(/*{
  modelName: 'workbench_template'
}*/)
export class TemplateModel extends Model {

  @PrimaryGeneratedColumn()
  id: string;

  @Column()
  name: string;

  @Column()
  preview: string;

  @Column()
  description: string;

  @Column()
  availableFrom: string;

  @Column(/*{
    type: DataType.STRING
  }*/)
  get tags(): any {
    return JSON.parse(this.getDataValue('tags') as string);
  }

  set tags(value: any) {
    this.setDataValue('tags', JSON.stringify(value));
  }

  @Column()
  previewLink: string;

  @Column()
  usages: string;

  @Column()
  priority: string;

  @Column()
  locked: boolean;

  @Column(/*{
    type: DataType.STRING
  }*/)
  get model(): any {
    return JSON.parse(this.getDataValue('model') as string);
  }

  set model(value: any) {
    this.setDataValue('model', JSON.stringify(value));
  }

  @CreatedAtColumn()
  created_at: Date;

  @UpdatedAtColumn()
  updated_at: Date;

  @DeletedAtColumn()
  deleted_at: Date;
}

