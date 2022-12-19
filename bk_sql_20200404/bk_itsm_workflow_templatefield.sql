create table workflow_templatefield
(
    id              int auto_increment
        primary key,
    creator         varchar(64)    null,
    create_at       datetime(6)    not null,
    update_at       datetime(6)    not null,
    updated_by      varchar(64)    null,
    end_at          datetime(6)    null,
    is_deleted      tinyint(1)     not null,
    is_builtin      tinyint(1)     not null,
    is_readonly     tinyint(1)     not null,
    is_valid        tinyint(1)     not null,
    display         tinyint(1)     not null,
    source_type     varchar(32)    not null,
    source_uri      varchar(255)   null,
    api_instance_id int            null,
    kv_relation     varchar(64)    not null,
    type            varchar(32)    not null,
    `key`           varchar(255)   not null,
    name            varchar(64)    not null,
    layout          varchar(32)    not null,
    validate_type   varchar(32)    not null,
    show_type       int            not null,
    show_conditions longtext       not null,
    regex           varchar(64)    null,
    custom_regex    varchar(128)   null,
    `desc`          varchar(128)   null,
    tips            varchar(128)   null,
    is_tips         tinyint(1)     not null,
    `default`       varchar(10000) null,
    choice          longtext       not null,
    related_fields  longtext       null,
    meta            longtext       not null,
    flow_type       varchar(64)    not null,
    regex_config    varchar(255)   not null
);

create index workflow_templatefield_is_deleted_5aa88304
    on workflow_templatefield (is_deleted);

INSERT INTO bk_itsm.workflow_templatefield (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, is_readonly, is_valid, display, source_type, source_uri, api_instance_id, kv_relation, type, `key`, name, layout, validate_type, show_type, show_conditions, regex, custom_regex, `desc`, tips, is_tips, `default`, choice, related_fields, meta, flow_type, regex_config) VALUES (1, null, '2022-04-04 18:29:34.346860', '2022-04-04 18:29:34.346883', null, null, 0, 1, 0, 1, 1, 'CUSTOM', '', 0, '{}', 'STRING', 'title', '标题', 'COL_12', 'REQUIRE', 1, '{}', 'EMPTY', '', '请输入标题', '', 0, '', '[]', '{}', '{}', 'DEFAULT', '{}');
INSERT INTO bk_itsm.workflow_templatefield (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, is_readonly, is_valid, display, source_type, source_uri, api_instance_id, kv_relation, type, `key`, name, layout, validate_type, show_type, show_conditions, regex, custom_regex, `desc`, tips, is_tips, `default`, choice, related_fields, meta, flow_type, regex_config) VALUES (2, null, '2022-04-04 18:29:34.349317', '2022-04-04 18:29:34.349330', null, null, 0, 1, 0, 1, 1, 'DATADICT', 'IMPACT', 0, '{}', 'SELECT', 'impact', '影响范围', 'COL_12', 'REQUIRE', 1, '{}', 'EMPTY', '', '请选择影响范围', '', 0, '', '[]', '{}', '{}', 'DEFAULT', '{}');
INSERT INTO bk_itsm.workflow_templatefield (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, is_readonly, is_valid, display, source_type, source_uri, api_instance_id, kv_relation, type, `key`, name, layout, validate_type, show_type, show_conditions, regex, custom_regex, `desc`, tips, is_tips, `default`, choice, related_fields, meta, flow_type, regex_config) VALUES (3, null, '2022-04-04 18:29:34.351730', '2022-04-04 18:29:34.351742', null, null, 0, 1, 0, 1, 1, 'DATADICT', 'URGENCY', 0, '{}', 'SELECT', 'urgency', '紧急程度', 'COL_12', 'REQUIRE', 1, '{}', 'EMPTY', '', '请选择紧急程度', '', 0, '', '[]', '{}', '{}', 'DEFAULT', '{}');
INSERT INTO bk_itsm.workflow_templatefield (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, is_readonly, is_valid, display, source_type, source_uri, api_instance_id, kv_relation, type, `key`, name, layout, validate_type, show_type, show_conditions, regex, custom_regex, `desc`, tips, is_tips, `default`, choice, related_fields, meta, flow_type, regex_config) VALUES (4, null, '2022-04-04 18:29:34.354122', '2022-04-04 18:29:34.354134', null, null, 0, 1, 1, 1, 1, 'DATADICT', 'PRIORITY', 0, '{}', 'SELECT', 'priority', '优先级', 'COL_12', 'REQUIRE', 1, '{}', 'EMPTY', '', '请选择优先级', '', 0, '', '[]', '{"rely_on":["urgency","impact"]}', '{}', 'DEFAULT', '{}');
INSERT INTO bk_itsm.workflow_templatefield (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, is_readonly, is_valid, display, source_type, source_uri, api_instance_id, kv_relation, type, `key`, name, layout, validate_type, show_type, show_conditions, regex, custom_regex, `desc`, tips, is_tips, `default`, choice, related_fields, meta, flow_type, regex_config) VALUES (5, null, '2022-04-04 18:29:34.356581', '2022-04-04 18:29:34.356596', null, null, 0, 1, 0, 1, 1, 'RPC', 'ticket_status', 0, '{}', 'SELECT', 'current_status', '工单状态', 'COL_12', 'REQUIRE', 1, '{}', 'EMPTY', '', '请选择工单状态', '', 0, '', '[]', '{}', '{}', 'DEFAULT', '{}');
INSERT INTO bk_itsm.workflow_templatefield (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, is_readonly, is_valid, display, source_type, source_uri, api_instance_id, kv_relation, type, `key`, name, layout, validate_type, show_type, show_conditions, regex, custom_regex, `desc`, tips, is_tips, `default`, choice, related_fields, meta, flow_type, regex_config) VALUES (6, null, '2022-04-04 18:29:34.358992', '2022-04-04 18:29:34.359006', null, null, 0, 1, 0, 1, 1, 'CUSTOM', '', 0, '{}', 'TEXT', 'apply_content', '申请内容', 'COL_12', 'REQUIRE', 1, '{}', 'EMPTY', '', '请输入申请内容', '', 0, '', '[]', '{}', '{}', 'DEFAULT', '{}');
INSERT INTO bk_itsm.workflow_templatefield (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, is_readonly, is_valid, display, source_type, source_uri, api_instance_id, kv_relation, type, `key`, name, layout, validate_type, show_type, show_conditions, regex, custom_regex, `desc`, tips, is_tips, `default`, choice, related_fields, meta, flow_type, regex_config) VALUES (7, null, '2022-04-04 18:29:34.361424', '2022-04-04 18:29:34.361437', null, null, 0, 1, 0, 1, 1, 'CUSTOM', '', 0, '{}', 'TEXT', 'apply_reason', '申请理由', 'COL_12', 'REQUIRE', 1, '{}', 'EMPTY', '', '请输入理由', '', 0, '', '[]', '{}', '{}', 'DEFAULT', '{}');
INSERT INTO bk_itsm.workflow_templatefield (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, is_readonly, is_valid, display, source_type, source_uri, api_instance_id, kv_relation, type, `key`, name, layout, validate_type, show_type, show_conditions, regex, custom_regex, `desc`, tips, is_tips, `default`, choice, related_fields, meta, flow_type, regex_config) VALUES (8, null, '2022-04-04 18:29:35.060263', '2022-04-04 18:29:35.060289', null, null, 0, 0, 0, 1, 0, 'CUSTOM', '', 0, '{}', 'STRING', 'application_type', '申请类型', 'COL_12', 'REQUIRE', 1, '{}', 'EMPTY', '', '', '', 0, '', '[]', '{}', '{}', 'DEFAULT', '{"rule":{"expressions":[{"condition":"","key":"","source":"field","type":"STRING","value":""}],"type":"and"}}');
INSERT INTO bk_itsm.workflow_templatefield (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, is_readonly, is_valid, display, source_type, source_uri, api_instance_id, kv_relation, type, `key`, name, layout, validate_type, show_type, show_conditions, regex, custom_regex, `desc`, tips, is_tips, `default`, choice, related_fields, meta, flow_type, regex_config) VALUES (9, null, '2022-04-04 18:29:35.062286', '2022-04-04 18:29:35.062307', null, null, 0, 0, 0, 1, 0, 'CUSTOM', '', 0, '{}', 'STRING', 'organization', '组织', 'COL_12', 'REQUIRE', 1, '{}', 'EMPTY', '', '', '', 0, '', '[]', '{}', '{}', 'DEFAULT', '{"rule":{"expressions":[{"condition":"","key":"","source":"field","type":"STRING","value":""}],"type":"and"}}');
INSERT INTO bk_itsm.workflow_templatefield (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, is_readonly, is_valid, display, source_type, source_uri, api_instance_id, kv_relation, type, `key`, name, layout, validate_type, show_type, show_conditions, regex, custom_regex, `desc`, tips, is_tips, `default`, choice, related_fields, meta, flow_type, regex_config) VALUES (10, null, '2022-04-04 18:29:35.064285', '2022-04-04 18:29:35.064309', null, null, 0, 0, 0, 1, 0, 'CUSTOM', '', 0, '{}', 'CUSTOM-FORM', 'content', '申请内容', 'COL_12', 'REQUIRE', 1, '{}', 'EMPTY', '', '', '', 0, '{
    "schemes": {},
    "form_data": []
}', '[]', '{}', '{}', 'DEFAULT', '{"rule":{"expressions":[],"type":"and"}}');
INSERT INTO bk_itsm.workflow_templatefield (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, is_readonly, is_valid, display, source_type, source_uri, api_instance_id, kv_relation, type, `key`, name, layout, validate_type, show_type, show_conditions, regex, custom_regex, `desc`, tips, is_tips, `default`, choice, related_fields, meta, flow_type, regex_config) VALUES (11, null, '2022-04-04 18:29:35.066318', '2022-04-04 18:29:35.066337', null, null, 0, 0, 0, 1, 0, 'CUSTOM', '', 0, '{}', 'STRING', 'reason', '申请理由', 'COL_12', 'REQUIRE', 1, '{}', 'EMPTY', '', '', '', 0, '', '[]', '{}', '{}', 'DEFAULT', '{"rule":{"expressions":[{"condition":"","key":"","source":"field","type":"STRING","value":""}],"type":"and"}}');
