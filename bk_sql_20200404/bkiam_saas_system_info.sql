create table saas_system_info
(
    id              varchar(32)                             not null
        primary key,
    name            varchar(255)                            not null,
    name_en         varchar(255)                            not null,
    description     varchar(1024) default ''                not null,
    description_en  varchar(1024) default ''                not null,
    clients         varchar(1024)                           not null,
    provider_config text                                    not null,
    created_at      timestamp     default CURRENT_TIMESTAMP not null,
    updated_at      timestamp     default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP
);

INSERT INTO bkiam.saas_system_info (id, name, name_en, description, description_en, clients, provider_config, created_at, updated_at) VALUES ('bk_itsm', '流程服务', 'ITSM', '', '', 'bk_itsm', '{"healthz":"","token":"vjb2rcscnpdsdqdx9rw38812gswqs5xg","host":"http://paas.service.consul:80/o/bk_itsm","auth":"basic"}', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.saas_system_info (id, name, name_en, description, description_en, clients, provider_config, created_at, updated_at) VALUES ('bk_nodeman', '节点管理', 'nodeman', '', '', 'bk_nodeman,bk_bknodeman', '{"host":"http://paas.service.consul:80/o/bk_nodeman/","auth":"basic","healthz":"","token":"itbsm0xad9m97xf6lqssu4v1kcawxud0"}', '2022-04-04 06:43:23', '2022-04-04 06:49:41');
INSERT INTO bkiam.saas_system_info (id, name, name_en, description, description_en, clients, provider_config, created_at, updated_at) VALUES ('bk_paas', 'PaaS平台', 'PaaS', '蓝鲸智云PaaS平台是一个开放式的开发平台，让开发者可以方便快捷地创建、开发、部署和管理SaaS应用。', 'The BlueKing PaaS is an open development platform that allows developers to create, develop, deploy and manage SaaS applications quickly and easily.', 'bk_paas,bk_paas3', '{"token":"hdf9us0a74wyhk22gl6d1gl50fh4mcth","host":"http://paas.service.consul","auth":"basic","healthz":"/healthz/"}', '2022-04-04 06:23:08', '2022-04-04 06:23:08');
INSERT INTO bkiam.saas_system_info (id, name, name_en, description, description_en, clients, provider_config, created_at, updated_at) VALUES ('bk_sops', '标准运维', 'Standard OPS', '', '', 'bk_sops', '{"auth":"basic","healthz":"","token":"588b31u6qpiobdw5qq3faagnojnbde33","host":"http://paas.service.consul:80/o/bk_sops/"}', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.saas_system_info (id, name, name_en, description, description_en, clients, provider_config, created_at, updated_at) VALUES ('bk_usermgr', '用户管理', 'bk-user-core', '用户管理是蓝鲸体系通用的用户&组织架构管理系统', 'bk-user is a management system for profile & department in Blueking', 'bk_user_manage,bk_usermgr', '{"auth":"basic","healthz":"","token":"gg07szcwt9tome6hccjb2c6gibj30l6z","host":"http://usermgr.service.consul:8009"}', '2022-04-04 06:24:16', '2022-04-04 06:24:16');
