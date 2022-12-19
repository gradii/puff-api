create table sla_slatimerrule
(
    id             int auto_increment
        primary key,
    creator        varchar(64)  not null,
    create_at      datetime(6)  not null,
    update_at      datetime(6)  not null,
    updated_by     varchar(64)  not null,
    is_deleted     tinyint(1)   not null,
    service_type   varchar(64)  not null,
    name           varchar(255) not null,
    condition_type varchar(64)  not null,
    `condition`    longtext     not null
);

INSERT INTO bk_itsm.sla_slatimerrule (id, creator, create_at, update_at, updated_by, is_deleted, service_type, name, condition_type, `condition`) VALUES (1, '', '2022-04-04 18:29:35.551729', '2022-04-04 18:29:35.551745', '', 0, 'change', '启动', 'START', '{"type":"all","expressions":[{"name":"current_status","value":"RUNNING","operator":"equal_to"}]}');
INSERT INTO bk_itsm.sla_slatimerrule (id, creator, create_at, update_at, updated_by, is_deleted, service_type, name, condition_type, `condition`) VALUES (2, '', '2022-04-04 18:29:35.551791', '2022-04-04 18:29:35.551797', '', 0, 'change', '启动', 'STOP', '{"expressions":[],"type":"any"}');
INSERT INTO bk_itsm.sla_slatimerrule (id, creator, create_at, update_at, updated_by, is_deleted, service_type, name, condition_type, `condition`) VALUES (3, '', '2022-04-04 18:29:35.551821', '2022-04-04 18:29:35.551826', '', 0, 'change', '启动', 'PAUSE', '{"type":"any","expressions":[]}');
INSERT INTO bk_itsm.sla_slatimerrule (id, creator, create_at, update_at, updated_by, is_deleted, service_type, name, condition_type, `condition`) VALUES (4, '', '2022-04-04 18:29:35.551848', '2022-04-04 18:29:35.551853', '', 0, 'request', '启动', 'START', '{"type":"all","expressions":[{"name":"current_status","value":"RUNNING","operator":"equal_to"}]}');
INSERT INTO bk_itsm.sla_slatimerrule (id, creator, create_at, update_at, updated_by, is_deleted, service_type, name, condition_type, `condition`) VALUES (5, '', '2022-04-04 18:29:35.551876', '2022-04-04 18:29:35.551881', '', 0, 'request', '启动', 'STOP', '{"expressions":[],"type":"any"}');
INSERT INTO bk_itsm.sla_slatimerrule (id, creator, create_at, update_at, updated_by, is_deleted, service_type, name, condition_type, `condition`) VALUES (6, '', '2022-04-04 18:29:35.551902', '2022-04-04 18:29:35.551907', '', 0, 'request', '启动', 'PAUSE', '{"type":"any","expressions":[]}');
INSERT INTO bk_itsm.sla_slatimerrule (id, creator, create_at, update_at, updated_by, is_deleted, service_type, name, condition_type, `condition`) VALUES (7, '', '2022-04-04 18:29:35.551928', '2022-04-04 18:29:35.551934', '', 0, 'event', '启动', 'START', '{"type":"all","expressions":[{"name":"current_status","value":"RUNNING","operator":"equal_to"}]}');
INSERT INTO bk_itsm.sla_slatimerrule (id, creator, create_at, update_at, updated_by, is_deleted, service_type, name, condition_type, `condition`) VALUES (8, '', '2022-04-04 18:29:35.551956', '2022-04-04 18:29:35.551961', '', 0, 'event', '启动', 'STOP', '{"expressions":[],"type":"any"}');
INSERT INTO bk_itsm.sla_slatimerrule (id, creator, create_at, update_at, updated_by, is_deleted, service_type, name, condition_type, `condition`) VALUES (9, '', '2022-04-04 18:29:35.551982', '2022-04-04 18:29:35.551987', '', 0, 'event', '启动', 'PAUSE', '{"type":"any","expressions":[]}');
INSERT INTO bk_itsm.sla_slatimerrule (id, creator, create_at, update_at, updated_by, is_deleted, service_type, name, condition_type, `condition`) VALUES (10, '', '2022-04-04 18:29:35.552008', '2022-04-04 18:29:35.552013', '', 0, 'public', '启动', 'START', '{"type":"all","expressions":[{"name":"current_status","value":"RUNNING","operator":"equal_to"}]}');
INSERT INTO bk_itsm.sla_slatimerrule (id, creator, create_at, update_at, updated_by, is_deleted, service_type, name, condition_type, `condition`) VALUES (11, '', '2022-04-04 18:29:35.552035', '2022-04-04 18:29:35.552040', '', 0, 'public', '启动', 'STOP', '{"expressions":[],"type":"any"}');
INSERT INTO bk_itsm.sla_slatimerrule (id, creator, create_at, update_at, updated_by, is_deleted, service_type, name, condition_type, `condition`) VALUES (12, '', '2022-04-04 18:29:35.552061', '2022-04-04 18:29:35.552066', '', 0, 'public', '启动', 'PAUSE', '{"type":"any","expressions":[]}');
INSERT INTO bk_itsm.sla_slatimerrule (id, creator, create_at, update_at, updated_by, is_deleted, service_type, name, condition_type, `condition`) VALUES (13, '', '2022-04-04 18:29:35.552087', '2022-04-04 18:29:35.552092', '', 0, 'question', '启动', 'START', '{"type":"all","expressions":[{"name":"current_status","value":"RUNNING","operator":"equal_to"}]}');
INSERT INTO bk_itsm.sla_slatimerrule (id, creator, create_at, update_at, updated_by, is_deleted, service_type, name, condition_type, `condition`) VALUES (14, '', '2022-04-04 18:29:35.552123', '2022-04-04 18:29:35.552128', '', 0, 'question', '启动', 'STOP', '{"expressions":[],"type":"any"}');
INSERT INTO bk_itsm.sla_slatimerrule (id, creator, create_at, update_at, updated_by, is_deleted, service_type, name, condition_type, `condition`) VALUES (15, '', '2022-04-04 18:29:35.552150', '2022-04-04 18:29:35.552155', '', 0, 'question', '启动', 'PAUSE', '{"type":"any","expressions":[]}');
