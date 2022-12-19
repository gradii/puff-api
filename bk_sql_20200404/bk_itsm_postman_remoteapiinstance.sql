create table postman_remoteapiinstance
(
    id                 int auto_increment
        primary key,
    creator            varchar(64)    not null,
    create_at          datetime(6)    not null,
    update_at          datetime(6)    not null,
    updated_by         varchar(64)    not null,
    is_deleted         tinyint(1)     not null,
    name               varchar(32)    not null,
    `desc`             varchar(1000)  null,
    req_params         longtext       not null,
    req_body           longtext       not null,
    rsp_data           varchar(10000) not null,
    succeed_conditions longtext       not null,
    end_conditions     longtext       null,
    need_poll          tinyint(1)     not null,
    remote_api_info    longtext       not null,
    remote_api_id      int            not null,
    map_code           longtext       not null,
    before_req         longtext       not null,
    constraint postman_remoteapiins_remote_api_id_f1ed6725_fk_postman_r
        foreign key (remote_api_id) references postman_remoteapi (id)
);

INSERT INTO bk_itsm.postman_remoteapiinstance (id, creator, create_at, update_at, updated_by, is_deleted, name, `desc`, req_params, req_body, rsp_data, succeed_conditions, end_conditions, need_poll, remote_api_info, remote_api_id, map_code, before_req) VALUES (1, '', '2022-04-04 18:29:34.445117', '2022-04-04 18:29:34.445129', '', 0, '', '', '{}', '{"fields":[],"page":{"sort":"bk_biz_id","start":0,"limit":200},"condition":{}}', 'data.info', '{}', '{}', 0, '{"id":7,"remote_system":1,"remote_system_name":"\\u84dd\\u9cb8\\u914d\\u7f6e\\u5e73\\u53f0","name":"\\u67e5\\u8be2\\u4e1a\\u52a1","owners":"","path":"/api/c/compapi/v2/cc/search_business/","version":"v2","method":"POST","func_name":"search_business","desc":"\\u67e5\\u8be2\\u4e1a\\u52a1","is_activated":true,"req_headers":[],"req_params":[],"req_body":{"$schema":"http://json-schema.org/draft-04/schema#","type":"object","description":"\\u521d\\u59cb\\u5316\\u6570\\u636e","properties":{"fields":{"type":"array","description":"\\u6307\\u5b9a\\u67e5\\u8be2\\u7684\\u5b57\\u6bb5\\uff0c\\u53c2\\u6570\\u4e3a\\u4e1a\\u52a1\\u7684\\u4efb\\u610f\\u5c5e\\u6027\\uff0c\\u5982\\u679c\\u4e0d\\u586b\\u5199\\u5b57\\u6bb5\\u4fe1\\u606f\\uff08\\u586b\\u5199\\u8bf7\\u5148\\u5230API\\u914d\\u7f6e\\u6dfb\\u52a0\\u4e00\\u4e2a\\u9009\\u9879\\uff09\\uff0c\\u7cfb\\u7edf\\u4f1a\\u8fd4\\u56de\\u4e1a\\u52a1\\u7684\\u6240\\u6709\\u5b57\\u6bb5"},"page":{"required":["start","limit"],"type":"object","description":"\\u5206\\u9875\\u6761\\u4ef6","properties":{"sort":{"default":"bk_biz_id","type":"string","description":"\\u6392\\u5e8f\\u5b57\\u6bb5\\uff0c\\u901a\\u8fc7\\u5728\\u5b57\\u6bb5\\u524d\\u9762\\u589e\\u52a0 -\\uff0c\\u5982 sort:\\"-field\\" \\u53ef\\u4ee5\\u8868\\u793a\\u6309\\u7167\\u5b57\\u6bb5 field\\u964d\\u5e8f"},"start":{"default":0,"type":"number","description":"\\u8bb0\\u5f55\\u5f00\\u59cb\\u4f4d\\u7f6e"},"limit":{"default":200,"type":"number","description":"\\u6bcf\\u9875\\u9650\\u5236\\u6761\\u6570,\\u6700\\u5927200"}}},"condition":{"type":"object","description":"\\u67e5\\u8be2\\u6761\\u4ef6\\uff0c\\u53c2\\u6570\\u4e3a\\u4e1a\\u52a1\\u7684\\u4efb\\u610f\\u5c5e\\u6027\\uff0c\\u5982\\u679c\\u4e0d\\u5199\\u4ee3\\u8868\\u641c\\u7d22\\u5168\\u90e8\\u6570\\u636e\\uff08\\u586b\\u5199\\u8bf7\\u5148\\u5230API\\u914d\\u7f6e\\u6dfb\\u52a0\\u9009\\u9879\\uff09","properties":{}}}},"rsp_data":{"$schema":"http://json-schema.org/draft-04/schema#","required":["message","code","data","result","request_id"],"type":"object","description":"\\u521d\\u59cb\\u5316\\u6570\\u636e","properties":{"message":{"default":"success","type":"string","description":"\\u8fd4\\u56de\\u4fe1\\u606f"},"code":{"default":0,"type":"number","description":"\\u8fd4\\u56decode"},"data":{"required":["count","info"],"type":"object","description":"\\u8fd4\\u56de\\u6570\\u636e","properties":{"count":{"default":59,"type":"number","description":"\\u4e1a\\u52a1\\u6570\\u91cf"},"info":{"items":{"required":["bk_biz_id","language","life_cycle","bk_biz_developer","bk_biz_maintainer","bk_biz_tester","time_zone","default","create_time","bk_biz_productor","bk_supplier_account","bk_biz_name","bk_supplier_id"],"type":"object","description":"","properties":{"bk_biz_id":{"default":90,"type":"number","description":"\\u4e1a\\u52a1ID"},"language":{"default":"1","type":"string","description":"\\u8bed\\u8a00"},"life_cycle":{"default":"2","type":"string","description":"\\u751f\\u547d\\u5468\\u671f"},"bk_biz_developer":{"default":"admin","type":"string","description":"\\u5f00\\u53d1\\u4eba\\u5458"},"bk_biz_maintainer":{"default":"admin","type":"string","description":"\\u8fd0\\u7ef4\\u4eba\\u5458"},"bk_biz_tester":{"default":"admin","type":"string","description":"\\u6d4b\\u8bd5\\u4eba\\u5458"},"time_zone":{"default":"Asia/Shanghai","type":"string","description":"\\u65f6\\u533a"},"default":{"default":0,"type":"number","description":""},"create_time":{"default":"2019-08-09T10:20:57.137+08:00","type":"string","description":"\\u521b\\u5efa\\u65f6\\u95f4"},"bk_biz_productor":{"default":"admin","type":"string","description":"\\u4ea7\\u54c1\\u4eba\\u5458"},"bk_supplier_account":{"default":"0","type":"string","description":"\\u5f00\\u53d1\\u5546\\u8d26\\u6237"},"bk_biz_name":{"default":"cctest","type":"string","description":"\\u4e1a\\u52a1\\u540d\\u79f0"},"bk_supplier_id":{"default":0,"type":"number","description":"\\u5f00\\u53d1\\u5546\\u8d26\\u6237ID"}}},"type":"array","description":"\\u4e1a\\u52a1\\u5217\\u8868"}}},"result":{"default":true,"type":"boolean","description":"\\u8fd4\\u56de\\u7ed3\\u679c"},"request_id":{"default":"50e80f1def5a4d608a7e8186bda4b9ed","type":"string","description":"\\u8bf7\\u6c42ID"}}},"map_code":"","before_req":"","create_at":"2020-05-27 16:26:22","update_at":"2020-05-27 16:26:22","creator":"system","updated_by":"system","is_builtin":true,"auth_actions":[],"count":4}', 39, '', '');
INSERT INTO bk_itsm.postman_remoteapiinstance (id, creator, create_at, update_at, updated_by, is_deleted, name, `desc`, req_params, req_body, rsp_data, succeed_conditions, end_conditions, need_poll, remote_api_info, remote_api_id, map_code, before_req) VALUES (2, '', '2022-04-04 18:29:35.190727', '2022-04-04 18:29:35.190740', '', 0, '', '', '{}', '{"fields":["bk_biz_id","bk_biz_name"]}', 'data.info', '{}', '{}', 0, '{}', 40, '', '');
