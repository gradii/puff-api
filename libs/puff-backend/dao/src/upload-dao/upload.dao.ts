/**
 * @license
 *
 * Use of this source code is governed by an MIT-style license
 */

import { Injectable } from '@nestjs/common';
import { FileModel } from '@gradii/puff-backend/common-models';

@Injectable()
export class UploadDao {

  constructor(
    // @InjectModel(FileModel)
    // private fileModel: typeof FileModel
  ) {
  }

  async findAll(): Promise<FileModel[]> {
    return await FileModel.createQuery().get() as FileModel[];
  }

  findOneBy(where: Record<string, any>): Promise<FileModel> {
    return FileModel.createQuery().where(where).first();
  }

  findOneByName(name: string): Promise<FileModel> {
    return FileModel.createQuery().where({
      fileName: name
    }).first();
  }

  async saveFile({
                   name,
                   originalName,
                   hash,
                   path,
                   ext,
                   mimetype,
                   type
                 }: {
    name: string,
    originalName: string,
    hash: string,
    path: string,
    ext: string,
    mimetype: string,
    type: string
  }): Promise<[FileModel, boolean] | number> {
    return FileModel.createQuery().upsert(
      {
        fileName    : name,
        originalName: originalName,
        fileHash    : hash,
        filePath    : path,
        ext         : ext,
        mimetype,
        fileType    : type
      }
      , ['fileHash']);
  }

  // async remove(id: string): Promise<void> {
  //   const user = await this.findOne(id);
  //   await user.destroy();
  // }
}
