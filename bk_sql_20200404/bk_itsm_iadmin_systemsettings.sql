create table iadmin_systemsettings
(
    id         int auto_increment
        primary key,
    creator    varchar(64) not null,
    create_at  datetime(6) not null,
    update_at  datetime(6) not null,
    updated_by varchar(64) not null,
    is_deleted tinyint(1)  not null,
    type       varchar(64) not null,
    `key`      varchar(64) not null,
    value      longtext    null,
    constraint iadmin_systemsettings_key_324b3988_uniq
        unique (`key`)
);

INSERT INTO bk_itsm.iadmin_systemsettings (id, creator, create_at, update_at, updated_by, is_deleted, type, `key`, value) VALUES (1, 'system', '2022-04-04 18:29:24.886282', '2022-04-04 18:29:24.886309', 'system', 0, 'PATH', 'SYS_FILE_PATH', '');
INSERT INTO bk_itsm.iadmin_systemsettings (id, creator, create_at, update_at, updated_by, is_deleted, type, `key`, value) VALUES (2, 'system', '2022-04-04 18:29:24.887502', '2022-04-04 18:29:24.887515', 'system', 0, 'FUNCTION', 'TABLE_FIELDS_SWITCH', 'off');
INSERT INTO bk_itsm.iadmin_systemsettings (id, creator, create_at, update_at, updated_by, is_deleted, type, `key`, value) VALUES (3, 'system', '2022-04-04 18:29:24.888538', '2022-04-04 18:29:24.888550', 'system', 0, 'FUNCTION', 'FIRST_STATE_SWITCH', 'off');
INSERT INTO bk_itsm.iadmin_systemsettings (id, creator, create_at, update_at, updated_by, is_deleted, type, `key`, value) VALUES (4, 'system', '2022-04-04 18:29:24.889568', '2022-04-04 18:29:24.889580', 'system', 0, 'FUNCTION', 'IS_ORGANIZATION', 'on');
INSERT INTO bk_itsm.iadmin_systemsettings (id, creator, create_at, update_at, updated_by, is_deleted, type, `key`, value) VALUES (5, 'system', '2022-04-04 18:29:24.890599', '2022-04-04 18:29:24.890610', 'system', 0, 'FUNCTION', 'SERVICE_SWITCH', 'on');
INSERT INTO bk_itsm.iadmin_systemsettings (id, creator, create_at, update_at, updated_by, is_deleted, type, `key`, value) VALUES (6, 'system', '2022-04-04 18:29:24.891620', '2022-04-04 18:29:24.891631', 'system', 0, 'FUNCTION', 'WIKI_SWITCH', 'off');
INSERT INTO bk_itsm.iadmin_systemsettings (id, creator, create_at, update_at, updated_by, is_deleted, type, `key`, value) VALUES (7, 'system', '2022-04-04 18:29:24.892638', '2022-04-04 18:29:24.892649', 'system', 0, 'FUNCTION', 'CHILD_TICKET_SWITCH', 'off');
INSERT INTO bk_itsm.iadmin_systemsettings (id, creator, create_at, update_at, updated_by, is_deleted, type, `key`, value) VALUES (8, 'system', '2022-04-04 18:29:24.893663', '2022-04-04 18:29:24.893674', 'system', 0, 'FUNCTION', 'SLA_SWITCH', 'off');
INSERT INTO bk_itsm.iadmin_systemsettings (id, creator, create_at, update_at, updated_by, is_deleted, type, `key`, value) VALUES (9, 'system', '2022-04-04 18:29:24.894680', '2022-04-04 18:29:24.894692', 'system', 0, 'FUNCTION', 'FLOW_PREVIEW', 'on');
INSERT INTO bk_itsm.iadmin_systemsettings (id, creator, create_at, update_at, updated_by, is_deleted, type, `key`, value) VALUES (10, 'system', '2022-04-04 18:29:24.895715', '2022-04-04 18:29:24.895726', 'system', 0, 'FUNCTION', 'TRIGGER_SWITCH', 'on');
INSERT INTO bk_itsm.iadmin_systemsettings (id, creator, create_at, update_at, updated_by, is_deleted, type, `key`, value) VALUES (11, 'system', '2022-04-04 18:29:24.896742', '2022-04-04 18:29:24.896754', 'system', 0, 'FUNCTION', 'TASK_SWITCH', 'off');
INSERT INTO bk_itsm.iadmin_systemsettings (id, creator, create_at, update_at, updated_by, is_deleted, type, `key`, value) VALUES (12, 'system', '2022-04-04 18:29:24.897765', '2022-04-04 18:29:24.897777', 'system', 0, 'FUNCTION', 'SMS_COMMENT_SWITCH', 'off');
INSERT INTO bk_itsm.iadmin_systemsettings (id, creator, create_at, update_at, updated_by, is_deleted, type, `key`, value) VALUES (13, '', '2022-04-04 18:29:35.870231', '2022-04-04 18:29:35.870248', '', 0, 'DATETIME', 'migrate_system_code', '1');
