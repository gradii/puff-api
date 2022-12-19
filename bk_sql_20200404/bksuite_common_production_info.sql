create table production_info
(
    `index` int         not null,
    code    varchar(32) not null comment '模块代码'
        primary key,
    name    varchar(32) not null comment '模块名称',
    version varchar(32) not null comment '版本号',
    constraint `index`
        unique (`index`),
    constraint name
        unique (name)
)
    engine = MyISAM;

INSERT INTO bksuite_common.production_info (`index`, code, name, version) VALUES (1, 'job', '作业平台', '3.2.7.3');
INSERT INTO bksuite_common.production_info (`index`, code, name, version) VALUES (2, 'bksuite', '蓝鲸智云', '6.0.5');
INSERT INTO bksuite_common.production_info (`index`, code, name, version) VALUES (3, 'usermgr', '用户管理', '2.2.6-b3');
INSERT INTO bksuite_common.production_info (`index`, code, name, version) VALUES (4, 'gse', '管控平台', '3.5.16.2');
INSERT INTO bksuite_common.production_info (`index`, code, name, version) VALUES (5, 'cmdb', '配置平台', '3.9.27');
INSERT INTO bksuite_common.production_info (`index`, code, name, version) VALUES (6, 'bkiam', '权限中心', '1.7.7');
INSERT INTO bksuite_common.production_info (`index`, code, name, version) VALUES (7, 'license', '全局认证服务', '3.1.5');
INSERT INTO bksuite_common.production_info (`index`, code, name, version) VALUES (8, 'bknodeman', '节点管理', '2.0.927');
INSERT INTO bksuite_common.production_info (`index`, code, name, version) VALUES (9, 'bkssm', '凭据管理系统', '1.0.8');
INSERT INTO bksuite_common.production_info (`index`, code, name, version) VALUES (10, 'paas_agent', 'PaaS Agent', '3.2.3');
INSERT INTO bksuite_common.production_info (`index`, code, name, version) VALUES (11, 'bklog', '日志平台', '');
INSERT INTO bksuite_common.production_info (`index`, code, name, version) VALUES (13, 'bkmonitorv3', '监控平台', '');
INSERT INTO bksuite_common.production_info (`index`, code, name, version) VALUES (14, 'open_paas', 'PaaS 平台', '2.12.25');
INSERT INTO bksuite_common.production_info (`index`, code, name, version) VALUES (15, 'fta', '故障自愈', '');
