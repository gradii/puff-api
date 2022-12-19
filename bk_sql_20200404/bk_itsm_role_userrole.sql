create table role_userrole
(
    id         int auto_increment
        primary key,
    creator    varchar(64)    not null,
    create_at  datetime(6)    not null,
    update_at  datetime(6)    not null,
    updated_by varchar(64)    not null,
    end_at     datetime(6)    null,
    is_deleted tinyint(1)     not null,
    role_type  varchar(64)    not null,
    name       varchar(64)    not null,
    members    varchar(10000) not null,
    access     varchar(128)   not null,
    role_key   varchar(128)   not null,
    `desc`     varchar(128)   null,
    owners     varchar(10000) not null,
    is_builtin tinyint(1)     not null
);

INSERT INTO bk_itsm.role_userrole (id, creator, create_at, update_at, updated_by, end_at, is_deleted, role_type, name, members, access, role_key, `desc`, owners, is_builtin) VALUES (1, '', '2022-04-04 18:29:34.600963', '2022-04-04 18:29:34.600975', '', null, 0, 'GENERAL', '开发', ',admin,', '', 'DEV', 'DEV', '', 0);
INSERT INTO bk_itsm.role_userrole (id, creator, create_at, update_at, updated_by, end_at, is_deleted, role_type, name, members, access, role_key, `desc`, owners, is_builtin) VALUES (2, '', '2022-04-04 18:29:34.602248', '2022-04-04 18:29:34.602259', '', null, 0, 'GENERAL', '开发经理', ',admin,', '', 'PM', 'PM', '', 0);
INSERT INTO bk_itsm.role_userrole (id, creator, create_at, update_at, updated_by, end_at, is_deleted, role_type, name, members, access, role_key, `desc`, owners, is_builtin) VALUES (3, '', '2022-04-04 18:29:34.603509', '2022-04-04 18:29:34.603520', '', null, 0, 'GENERAL', '运营', ',admin,', '', 'OPT', 'OPT', '', 0);
INSERT INTO bk_itsm.role_userrole (id, creator, create_at, update_at, updated_by, end_at, is_deleted, role_type, name, members, access, role_key, `desc`, owners, is_builtin) VALUES (4, '', '2022-04-04 18:29:34.604763', '2022-04-04 18:29:34.604774', '', null, 0, 'GENERAL', '运维', ',admin,', '', 'OPS', 'OPS', '', 0);
INSERT INTO bk_itsm.role_userrole (id, creator, create_at, update_at, updated_by, end_at, is_deleted, role_type, name, members, access, role_key, `desc`, owners, is_builtin) VALUES (5, '', '2022-04-04 18:29:34.606022', '2022-04-04 18:29:34.606034', '', null, 0, 'GENERAL', '测试', ',admin,', '', 'TEST', 'TEST', '', 0);
INSERT INTO bk_itsm.role_userrole (id, creator, create_at, update_at, updated_by, end_at, is_deleted, role_type, name, members, access, role_key, `desc`, owners, is_builtin) VALUES (6, '', '2022-04-04 18:29:34.607287', '2022-04-04 18:29:34.607298', '', null, 0, 'GENERAL', '变更经理', ',admin,', '', 'GENERAL_6', '', '', 0);
INSERT INTO bk_itsm.role_userrole (id, creator, create_at, update_at, updated_by, end_at, is_deleted, role_type, name, members, access, role_key, `desc`, owners, is_builtin) VALUES (7, '', '2022-04-04 18:29:34.608563', '2022-04-04 18:29:34.608575', '', null, 0, 'GENERAL', '故障派单员', ',admin,', '', 'GENERAL_7', '', '', 0);
INSERT INTO bk_itsm.role_userrole (id, creator, create_at, update_at, updated_by, end_at, is_deleted, role_type, name, members, access, role_key, `desc`, owners, is_builtin) VALUES (8, '', '2022-04-04 18:29:34.609824', '2022-04-04 18:29:34.609836', '', null, 0, 'GENERAL', '服务台小组', ',admin,', '', 'GENERAL_8', '', '', 0);
INSERT INTO bk_itsm.role_userrole (id, creator, create_at, update_at, updated_by, end_at, is_deleted, role_type, name, members, access, role_key, `desc`, owners, is_builtin) VALUES (9, '', '2022-04-04 18:29:34.611097', '2022-04-04 18:29:34.611116', '', null, 0, 'ADMIN', '工单统计管理员', ',admin,', 'read_only', 'STATICS_MANAGER', '可查看所有单据', '', 0);
INSERT INTO bk_itsm.role_userrole (id, creator, create_at, update_at, updated_by, end_at, is_deleted, role_type, name, members, access, role_key, `desc`, owners, is_builtin) VALUES (10, '', '2022-04-04 18:29:34.612375', '2022-04-04 18:29:34.612386', '', null, 0, 'ADMIN', 'ITSM超级管理员', ',admin,', 'superuser', 'SUPERUSER', '可查看并处理所有单据', '', 0);
INSERT INTO bk_itsm.role_userrole (id, creator, create_at, update_at, updated_by, end_at, is_deleted, role_type, name, members, access, role_key, `desc`, owners, is_builtin) VALUES (11, '', '2022-04-04 18:29:34.613662', '2022-04-04 18:29:34.613673', '', null, 0, 'ADMIN', '流程管理员', ',admin,', 'workflow_superuser', 'WORKFLOW_MANAGER', '可管理自己有权限的流程', '', 0);
INSERT INTO bk_itsm.role_userrole (id, creator, create_at, update_at, updated_by, end_at, is_deleted, role_type, name, members, access, role_key, `desc`, owners, is_builtin) VALUES (12, '', '2022-04-04 18:29:34.615060', '2022-04-04 18:29:34.615072', '', null, 0, 'ADMIN', '知识库管理员', ',admin,', 'wiki_superuser', 'WIKI_SUPERUSER', '可管理知识库所有文章', '', 0);
INSERT INTO bk_itsm.role_userrole (id, creator, create_at, update_at, updated_by, end_at, is_deleted, role_type, name, members, access, role_key, `desc`, owners, is_builtin) VALUES (13, '', '2022-04-04 18:29:34.616464', '2022-04-04 18:29:34.616476', '', null, 0, 'IAM', '超级管理员', '', '', 'super_manager', '权限中心管理权限最高的角色', '', 0);
INSERT INTO bk_itsm.role_userrole (id, creator, create_at, update_at, updated_by, end_at, is_deleted, role_type, name, members, access, role_key, `desc`, owners, is_builtin) VALUES (14, '', '2022-04-04 18:29:34.617884', '2022-04-04 18:29:34.617895', '', null, 0, 'IAM', '系统管理员', '', '', 'system_manager', '每个接入系统在权限中心管理权限最高的角色', '', 0);
INSERT INTO bk_itsm.role_userrole (id, creator, create_at, update_at, updated_by, end_at, is_deleted, role_type, name, members, access, role_key, `desc`, owners, is_builtin) VALUES (15, '', '2022-04-04 18:29:34.619168', '2022-04-04 18:29:34.619179', '', null, 0, 'IAM', '分级管理员', '', '', 'rating_manager', '根据不同权限范围拥有其所在范围内的管理权限的角色', '', 0);
INSERT INTO bk_itsm.role_userrole (id, creator, create_at, update_at, updated_by, end_at, is_deleted, role_type, name, members, access, role_key, `desc`, owners, is_builtin) VALUES (16, 'admin', '2022-04-04 18:29:35.334972', '2022-04-04 18:29:35.334988', '', null, 0, 'API', '日志检索系统', '', '', 'LOG_SEARCH', '日志系统调用专用', 'admin', 1);
