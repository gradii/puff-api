/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import {
  Column, CreatedAtColumn, DeletedAtColumn, Model, PrimaryGeneratedColumn, Table, UpdatedAtColumn
} from '@gradii/fedaco';

@Table({
  tableName : 'workbench_projects',
  connection: 'devops',
  hidden: ['model', 'created_at', 'updated_at', 'deleted_at']
})
export class ProjectModel extends Model {
  @PrimaryGeneratedColumn()
  id: string;

  @Column({
    field: 'view_id'
  })
  viewId: string;

  @Column({
    field: 'edits_count'
  })
  editsCount: number;

  // @Column({})
  // get model(): any {
  //   return JSON.parse(this.getAttribute('model') as string);
  // }
  //
  // set model(value: any) {
  //   this.setAttribute('model', JSON.stringify(value));
  // }

  @Column()
  name: string;

  @Column({
    field: 'project_type'
  })
  projectType: string;

  @Column({
    field: 'share_id'
  })
  shareId: number;

  @Column()
  shared: boolean;

  @Column({
    field: 'theme_id'
  })
  themeId: string;

  @Column({
    field: 'tutorial_id'
  })
  tutorialId: number;

  @Column()
  version: number;

  @Column()
  type: string;

  @Column()
  description: string;

  @Column({
    field: 'shared_by_me'
  })
  sharedByMe: false;

  @Column({
    field: 'shared_with_me'
  })
  sharedWithMe: false;

  @Column()
  thumbnail: string;

  @Column()
  locked: boolean;

  @CreatedAtColumn()
  created_at: Date;

  @UpdatedAtColumn()
  updated_at: Date;

  @DeletedAtColumn()
  deleted_at: Date = null;
}
