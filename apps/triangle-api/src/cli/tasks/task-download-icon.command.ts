import { snakeCase } from '@gradii/fedaco';
import { HttpService } from '@nestjs/axios';
import * as fse from 'fs-extra';
import * as jsdom from 'jsdom';
import { Command, CommandRunner, InquirerService } from 'nest-commander';

const {JSDOM} = jsdom;

@Command({name: 'download-icon', arguments: '[pack]'})
export class TaskDownloadIconCommand implements CommandRunner {
  constructor(
    private readonly inquirer: InquirerService,
    private readonly http: HttpService
  ) {
  }

  async run(inputs: string[], options: Record<string, string>): Promise<void> {
    let pack = inputs[0];
    if (!pack) {
      pack = (await this.inquirer.ask<{ pack: string }>('pack', undefined))
        .pack;
    }
    console.log(pack);

    const response = await this.http.get(
      `https://www.iconfont.cn/api/collection/detail.json?id=${pack}&ctoken=vYttPSaTumjiVyoajzx_kRm5`,
      {
        responseType: 'json'
      }).toPromise();

    const body = response.data;

    const rst = [];
    for (const icon of body.data.icons) {
      console.log(icon.id);
      const iconDetail = await this.http.get(
        `https://www.iconfont.cn/api/icon/iconInfo.json?id=${icon.id}&ctoken=vYttPSaTumjiVyoajzx_kRm5`,
        {
          responseType: 'json'
        }).toPromise();
      rst.push({
        name: icon.name.replace(/[^a-z-_0-9]/gi, '_').toLowerCase(),
        svg:  iconDetail.data.data.origin_file
      });
    }

    rst.forEach(it => {
      fse.outputFileSync(`./dist/download-icons/${pack}/${it.name}.svg`, it.svg);
    });

    const finalSvg = [];
    rst.forEach(it => {
      const {document}          = (new JSDOM(`${it.svg}`)).window;
      const svg                 = document.querySelector('svg');
      const viewBox             = svg.getAttribute('viewBox');
      const [, , width, height] = viewBox.split(' ');
      const path                = svg.querySelector('path');
      path.getAttributeNames().forEach(attr => {
        if (!['d'].includes(attr)) {
          path.removeAttribute(attr);
        }
      });
      finalSvg.push(
        `<symbol id="${it.name}" viewBox="${viewBox}"><g>${path.outerHTML}</g></symbol>`);
    });

    const finailCompactSvg = `<svg xmlns="http://www.w3.org/2000/svg">
  <defs>
    ${finalSvg.join('\n    ')}
  </defs>
</svg>`;
    console.log(finailCompactSvg);
    fse.outputFileSync(`dist/download-icons/compact-${pack}.svg`, finailCompactSvg);
    // console.log(rst);
  }
}
