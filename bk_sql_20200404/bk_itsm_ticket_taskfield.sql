create table ticket_taskfield
(
    id                int auto_increment
        primary key,
    creator           varchar(64)    null,
    create_at         datetime(6)    not null,
    update_at         datetime(6)    not null,
    updated_by        varchar(64)    null,
    end_at            datetime(6)    null,
    is_deleted        tinyint(1)     not null,
    is_builtin        tinyint(1)     not null,
    is_readonly       tinyint(1)     not null,
    is_valid          tinyint(1)     not null,
    display           tinyint(1)     not null,
    source_type       varchar(32)    not null,
    source_uri        varchar(255)   null,
    api_instance_id   int            null,
    kv_relation       varchar(64)    not null,
    type              varchar(32)    not null,
    `key`             varchar(255)   not null,
    name              varchar(64)    not null,
    layout            varchar(32)    not null,
    validate_type     varchar(32)    not null,
    show_type         int            not null,
    show_conditions   longtext       not null,
    regex             varchar(64)    null,
    regex_config      varchar(255)   not null,
    custom_regex      varchar(128)   null,
    `desc`            varchar(128)   null,
    tips              varchar(128)   null,
    is_tips           tinyint(1)     not null,
    `default`         varchar(10000) null,
    choice            longtext       not null,
    related_fields    longtext       null,
    meta              longtext       not null,
    state_id          varchar(32)    null,
    _value            longtext       null,
    source            varchar(32)    not null,
    workflow_field_id int            not null,
    task_id           int            not null
);

create index ticket_taskfield_is_deleted_82b6fef7
    on ticket_taskfield (is_deleted);

INSERT INTO bk_itsm.ticket_taskfield (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, is_readonly, is_valid, display, source_type, source_uri, api_instance_id, kv_relation, type, `key`, name, layout, validate_type, show_type, show_conditions, regex, regex_config, custom_regex, `desc`, tips, is_tips, `default`, choice, related_fields, meta, state_id, _value, source, workflow_field_id, task_id) VALUES (1, null, '2022-04-04 19:51:54.953166', '2022-04-04 19:51:54.953181', null, null, 0, 0, 0, 1, 1, 'CUSTOM', '', 0, '{}', 'RADIO', '27924a83a1b9d239086e9724264a53e3', '审批意见', 'COL_6', 'REQUIRE', 1, '{}', 'EMPTY', '{}', '', '', '', 0, '', '[{"key":"true","name":"\\u901a\\u8fc7"},{"key":"false","name":"\\u62d2\\u7edd"}]', '{}', '{"code":"APPROVE_RESULT"}', '4', 'true', 'CUSTOM', 5, 1);
INSERT INTO bk_itsm.ticket_taskfield (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, is_readonly, is_valid, display, source_type, source_uri, api_instance_id, kv_relation, type, `key`, name, layout, validate_type, show_type, show_conditions, regex, regex_config, custom_regex, `desc`, tips, is_tips, `default`, choice, related_fields, meta, state_id, _value, source, workflow_field_id, task_id) VALUES (2, null, '2022-04-04 19:51:54.953342', '2022-04-04 19:51:54.953352', null, null, 0, 0, 0, 1, 0, 'CUSTOM', '', 0, '{}', 'TEXT', '63f03ddeb567ba12dd711db71ee46e66', '备注', 'COL_12', 'OPTION', 0, '{"expressions":[{"value":"false","type":"RADIO","condition":"==","key":"27924a83a1b9d239086e9724264a53e3"}],"type":"and"}', 'EMPTY', '{}', '', '', '', 0, '', '[]', '{}', '{}', '4', '', 'CUSTOM', 6, 1);
INSERT INTO bk_itsm.ticket_taskfield (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, is_readonly, is_valid, display, source_type, source_uri, api_instance_id, kv_relation, type, `key`, name, layout, validate_type, show_type, show_conditions, regex, regex_config, custom_regex, `desc`, tips, is_tips, `default`, choice, related_fields, meta, state_id, _value, source, workflow_field_id, task_id) VALUES (3, null, '2022-04-04 19:52:21.857621', '2022-04-04 19:52:21.857647', null, null, 0, 0, 0, 1, 1, 'CUSTOM', '', 0, '{}', 'RADIO', 'a00592c80f7febec616849b177a6cf5d', '审批意见', 'COL_6', 'REQUIRE', 1, '{}', 'EMPTY', '{}', '', '', '', 0, '', '[{"key":"true","name":"\\u901a\\u8fc7"},{"key":"false","name":"\\u62d2\\u7edd"}]', '{}', '{"code":"APPROVE_RESULT"}', '5', 'true', 'CUSTOM', 8, 2);
INSERT INTO bk_itsm.ticket_taskfield (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, is_readonly, is_valid, display, source_type, source_uri, api_instance_id, kv_relation, type, `key`, name, layout, validate_type, show_type, show_conditions, regex, regex_config, custom_regex, `desc`, tips, is_tips, `default`, choice, related_fields, meta, state_id, _value, source, workflow_field_id, task_id) VALUES (4, null, '2022-04-04 19:52:21.857784', '2022-04-04 19:52:21.857792', null, null, 0, 0, 0, 1, 0, 'CUSTOM', '', 0, '{}', 'TEXT', '94c49c3a5047dda38ed1e07fb53c025d', '备注', 'COL_12', 'OPTION', 0, '{"expressions":[{"value":"false","type":"RADIO","condition":"==","key":"a00592c80f7febec616849b177a6cf5d"}],"type":"and"}', 'EMPTY', '{}', '', '', '', 0, '', '[]', '{}', '{}', '5', '', 'CUSTOM', 9, 2);
