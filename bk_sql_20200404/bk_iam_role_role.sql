create table role_role
(
    id           int auto_increment
        primary key,
    creator      varchar(64)  not null,
    updater      varchar(64)  not null,
    created_time datetime(6)  not null,
    updated_time datetime(6)  not null,
    name         varchar(128) not null,
    name_en      varchar(128) not null,
    description  varchar(255) not null,
    type         varchar(32)  not null,
    code         varchar(64)  not null
);

INSERT INTO bk_iam.role_role (id, creator, updater, created_time, updated_time, name, name_en, description, type, code) VALUES (1, 'admin', 'admin', '2022-04-04 10:27:35.027451', '2022-04-04 10:27:35.027483', '超级管理员', 'super administrator', '', 'super_manager', '');
INSERT INTO bk_iam.role_role (id, creator, updater, created_time, updated_time, name, name_en, description, type, code) VALUES (2, '', '', '2022-04-04 10:30:00.184363', '2022-04-04 10:30:00.184407', '用户管理', 'bk-user-core', '', 'system_manager', 'bk_usermgr');
INSERT INTO bk_iam.role_role (id, creator, updater, created_time, updated_time, name, name_en, description, type, code) VALUES (3, '', '', '2022-04-04 10:30:00.186624', '2022-04-04 10:30:00.186641', '流程服务', 'ITSM', '', 'system_manager', 'bk_itsm');
INSERT INTO bk_iam.role_role (id, creator, updater, created_time, updated_time, name, name_en, description, type, code) VALUES (4, '', '', '2022-04-04 10:30:00.188132', '2022-04-04 10:30:00.188147', 'PaaS平台', 'PaaS', '', 'system_manager', 'bk_paas');
INSERT INTO bk_iam.role_role (id, creator, updater, created_time, updated_time, name, name_en, description, type, code) VALUES (5, '', '', '2022-04-04 10:40:00.117388', '2022-04-04 10:40:00.117447', '标准运维', 'Standard OPS', '', 'system_manager', 'bk_sops');
INSERT INTO bk_iam.role_role (id, creator, updater, created_time, updated_time, name, name_en, description, type, code) VALUES (6, '', '', '2022-04-04 10:45:00.096509', '2022-04-04 10:45:00.096574', '节点管理', 'nodeman', '', 'system_manager', 'bk_nodeman');
