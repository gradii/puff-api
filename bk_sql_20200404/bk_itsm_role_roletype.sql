create table role_roletype
(
    id           int auto_increment
        primary key,
    creator      varchar(64)  not null,
    create_at    datetime(6)  not null,
    update_at    datetime(6)  not null,
    updated_by   varchar(64)  not null,
    end_at       datetime(6)  null,
    is_deleted   tinyint(1)   not null,
    name         varchar(64)  not null,
    type         varchar(64)  not null,
    is_processor tinyint(1)   not null,
    is_display   tinyint(1)   not null,
    `desc`       varchar(128) null
);

INSERT INTO bk_itsm.role_roletype (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, type, is_processor, is_display, `desc`) VALUES (1, '', '2022-04-04 18:29:34.584437', '2022-04-04 18:29:34.584465', '', null, 0, 'CMDB业务公用角色', 'CMDB', 1, 1, 'CMDB业务公用角色');
INSERT INTO bk_itsm.role_roletype (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, type, is_processor, is_display, `desc`) VALUES (2, '', '2022-04-04 18:29:34.585638', '2022-04-04 18:29:34.585651', '', null, 0, '通用角色表', 'GENERAL', 1, 1, '通用角色表');
INSERT INTO bk_itsm.role_roletype (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, type, is_processor, is_display, `desc`) VALUES (3, '', '2022-04-04 18:29:34.586810', '2022-04-04 18:29:34.586822', '', null, 0, '管理员角色表', 'admin', 0, 1, '管理员角色表');
INSERT INTO bk_itsm.role_roletype (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, type, is_processor, is_display, `desc`) VALUES (4, '', '2022-04-04 18:29:34.587965', '2022-04-04 18:29:34.587976', '', null, 0, '不限', 'OPEN', 1, 0, '不限');
INSERT INTO bk_itsm.role_roletype (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, type, is_processor, is_display, `desc`) VALUES (5, '', '2022-04-04 18:29:34.589119', '2022-04-04 18:29:34.589131', '', null, 0, '个人', 'PERSON', 1, 0, '个人');
INSERT INTO bk_itsm.role_roletype (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, type, is_processor, is_display, `desc`) VALUES (6, '', '2022-04-04 18:29:34.590271', '2022-04-04 18:29:34.590282', '', null, 0, '提单人', 'STARTER', 1, 0, '提单人');
INSERT INTO bk_itsm.role_roletype (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, type, is_processor, is_display, `desc`) VALUES (7, '', '2022-04-04 18:29:34.591419', '2022-04-04 18:29:34.591431', '', null, 0, '提单人上级', 'STARTER_LEADER', 1, 0, '提单人上级');
INSERT INTO bk_itsm.role_roletype (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, type, is_processor, is_display, `desc`) VALUES (8, '', '2022-04-04 18:29:34.592567', '2022-04-04 18:29:34.592579', '', null, 0, '指定节点处理人上级', 'ASSIGN_LEADER', 1, 0, '指定节点处理人上级');
INSERT INTO bk_itsm.role_roletype (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, type, is_processor, is_display, `desc`) VALUES (9, '', '2022-04-04 18:29:34.593719', '2022-04-04 18:29:34.593730', '', null, 0, '派单人指定', 'BY_ASSIGNOR', 1, 0, '派单人指定');
INSERT INTO bk_itsm.role_roletype (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, type, is_processor, is_display, `desc`) VALUES (10, '', '2022-04-04 18:29:34.594867', '2022-04-04 18:29:34.594878', '', null, 0, '无', 'EMPTY', 1, 0, '无');
INSERT INTO bk_itsm.role_roletype (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, type, is_processor, is_display, `desc`) VALUES (11, '', '2022-04-04 18:29:34.596016', '2022-04-04 18:29:34.596027', '', null, 0, '组织架构', 'ORGANIZATION', 1, 0, '组织架构');
INSERT INTO bk_itsm.role_roletype (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, type, is_processor, is_display, `desc`) VALUES (12, '', '2022-04-04 18:29:34.597187', '2022-04-04 18:29:34.597198', '', null, 0, '引用变量', 'VARIABLE', 1, 0, '引用变量');
INSERT INTO bk_itsm.role_roletype (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, type, is_processor, is_display, `desc`) VALUES (13, '', '2022-04-04 18:29:34.598338', '2022-04-04 18:29:34.598349', '', null, 0, '权限中心角色', 'IAM', 1, 0, '权限中心角色');
INSERT INTO bk_itsm.role_roletype (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, type, is_processor, is_display, `desc`) VALUES (14, '', '2022-04-04 18:29:34.599487', '2022-04-04 18:29:34.599498', '', null, 0, '第三方系统', 'API', 1, 0, '第三方系统');
