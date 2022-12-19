create table service_sysdict
(
    id          int auto_increment
        primary key,
    creator     varchar(64)    not null,
    create_at   datetime(6)    not null,
    update_at   datetime(6)    not null,
    updated_by  varchar(64)    not null,
    end_at      datetime(6)    null,
    is_deleted  tinyint(1)     not null,
    is_builtin  tinyint(1)     not null,
    `key`       varchar(255)   not null,
    name        varchar(255)   not null,
    `desc`      varchar(255)   null,
    is_enabled  tinyint(1)     not null,
    is_readonly tinyint(1)     not null,
    is_show     tinyint(1)     not null,
    owners      varchar(10000) not null
);

INSERT INTO bk_itsm.service_sysdict (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`, is_enabled, is_readonly, is_show, owners) VALUES (1, 'system', '2022-04-04 18:29:34.670858', '2022-04-04 18:29:34.670873', 'system', null, 0, 1, 'CHANGE_TYPE', '变更类型', '', 1, 0, 1, '');
INSERT INTO bk_itsm.service_sysdict (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`, is_enabled, is_readonly, is_show, owners) VALUES (2, 'system', '2022-04-04 18:29:34.672224', '2022-04-04 18:29:34.672239', 'system', null, 0, 1, 'EVENT_TYPE', '事件类型', '', 1, 0, 1, '');
INSERT INTO bk_itsm.service_sysdict (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`, is_enabled, is_readonly, is_show, owners) VALUES (3, 'system', '2022-04-04 18:29:34.680486', '2022-04-04 18:29:34.680498', 'system', null, 0, 1, 'PLAT_TYPE', '平台类型', '', 1, 0, 1, '');
INSERT INTO bk_itsm.service_sysdict (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`, is_enabled, is_readonly, is_show, owners) VALUES (4, 'system', '2022-04-04 18:29:34.687945', '2022-04-04 18:29:34.687961', 'system', null, 0, 1, 'EVENT_SOURCE_TYPE', '事件来源', '', 1, 0, 1, '');
INSERT INTO bk_itsm.service_sysdict (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`, is_enabled, is_readonly, is_show, owners) VALUES (5, 'system', '2022-04-04 18:29:34.698760', '2022-04-04 18:29:34.698773', 'system', null, 0, 1, 'SERVICE_TYPE', '服务类型', '', 1, 0, 1, '');
INSERT INTO bk_itsm.service_sysdict (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`, is_enabled, is_readonly, is_show, owners) VALUES (6, 'system', '2022-04-04 18:29:34.714602', '2022-04-04 18:29:34.714615', 'system', null, 0, 1, 'FLOW_TYPE', '流程类型', '', 1, 0, 1, '');
INSERT INTO bk_itsm.service_sysdict (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`, is_enabled, is_readonly, is_show, owners) VALUES (7, 'system', '2022-04-04 18:29:34.730043', '2022-04-04 18:29:34.730065', 'system', null, 0, 1, 'OPERATE_TYPE', '操作类型', '', 1, 0, 1, '');
INSERT INTO bk_itsm.service_sysdict (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`, is_enabled, is_readonly, is_show, owners) VALUES (8, 'system', '2022-04-04 18:29:34.790991', '2022-04-04 18:29:34.791011', 'system', null, 0, 1, 'STATE_TAG_TYPE', '节点标签类型', '', 1, 0, 1, '');
INSERT INTO bk_itsm.service_sysdict (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`, is_enabled, is_readonly, is_show, owners) VALUES (9, 'system', '2022-04-04 18:29:34.795448', '2022-04-04 18:29:34.795463', 'system', null, 0, 1, 'IMPACT', '影响范围', '', 1, 0, 1, '');
INSERT INTO bk_itsm.service_sysdict (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`, is_enabled, is_readonly, is_show, owners) VALUES (10, 'system', '2022-04-04 18:29:34.808390', '2022-04-04 18:29:34.808414', 'system', null, 0, 1, 'URGENCY', '紧急程度', '', 1, 0, 1, '');
INSERT INTO bk_itsm.service_sysdict (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`, is_enabled, is_readonly, is_show, owners) VALUES (11, 'system', '2022-04-04 18:29:34.822637', '2022-04-04 18:29:34.822652', 'system', null, 0, 1, 'PRIORITY', '优先级', '', 1, 0, 1, '');
INSERT INTO bk_itsm.service_sysdict (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`, is_enabled, is_readonly, is_show, owners) VALUES (12, 'system', '2022-04-04 18:29:34.833748', '2022-04-04 18:29:34.833761', 'system', null, 0, 1, 'CHANGE_IMPACT', 'CHANGE_IMPACT', '', 1, 0, 0, '');
INSERT INTO bk_itsm.service_sysdict (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`, is_enabled, is_readonly, is_show, owners) VALUES (13, 'system', '2022-04-04 18:29:34.843829', '2022-04-04 18:29:34.843841', 'system', null, 0, 1, 'CHANGE_URGENCY', 'CHANGE_URGENCY', '', 1, 0, 0, '');
INSERT INTO bk_itsm.service_sysdict (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`, is_enabled, is_readonly, is_show, owners) VALUES (14, 'system', '2022-04-04 18:29:34.854017', '2022-04-04 18:29:34.854034', 'system', null, 0, 1, 'EVENT_IMPACT', 'EVENT_IMPACT', '', 1, 0, 0, '');
INSERT INTO bk_itsm.service_sysdict (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`, is_enabled, is_readonly, is_show, owners) VALUES (15, 'system', '2022-04-04 18:29:34.865072', '2022-04-04 18:29:34.865089', 'system', null, 0, 1, 'EVENT_URGENCY', 'EVENT_URGENCY', '', 1, 0, 0, '');
INSERT INTO bk_itsm.service_sysdict (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`, is_enabled, is_readonly, is_show, owners) VALUES (16, 'system', '2022-04-04 18:29:34.875382', '2022-04-04 18:29:34.875393', 'system', null, 0, 1, 'REQUEST_IMPACT', 'REQUEST_IMPACT', '', 1, 0, 0, '');
INSERT INTO bk_itsm.service_sysdict (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`, is_enabled, is_readonly, is_show, owners) VALUES (17, 'system', '2022-04-04 18:29:34.885781', '2022-04-04 18:29:34.885793', 'system', null, 0, 1, 'REQUEST_URGENCY', 'REQUEST_URGENCY', '', 1, 0, 0, '');
INSERT INTO bk_itsm.service_sysdict (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`, is_enabled, is_readonly, is_show, owners) VALUES (18, 'system', '2022-04-04 18:29:34.896065', '2022-04-04 18:29:34.896078', 'system', null, 0, 1, 'QUESTION_IMPACT', 'QUESTION_IMPACT', '', 1, 0, 0, '');
INSERT INTO bk_itsm.service_sysdict (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`, is_enabled, is_readonly, is_show, owners) VALUES (19, 'system', '2022-04-04 18:29:34.907709', '2022-04-04 18:29:34.907722', 'system', null, 0, 1, 'QUESTION_URGENCY', 'QUESTION_URGENCY', '', 1, 0, 0, '');
