create table workflow_globalvariable
(
    id         int auto_increment
        primary key,
    creator    varchar(64)  null,
    create_at  datetime(6)  not null,
    update_at  datetime(6)  not null,
    updated_by varchar(64)  null,
    end_at     datetime(6)  null,
    `key`      varchar(255) not null,
    name       varchar(64)  not null,
    type       varchar(32)  not null,
    state_id   int          null,
    flow_id    int          null,
    is_valid   tinyint(1)   not null,
    is_deleted tinyint(1)   not null,
    meta       longtext     not null
);

INSERT INTO bk_itsm.workflow_globalvariable (id, creator, create_at, update_at, updated_by, end_at, `key`, name, type, state_id, flow_id, is_valid, is_deleted, meta) VALUES (1, null, '2022-04-04 18:29:34.411780', '2022-04-04 18:29:34.411791', null, null, 'ef1ecec2fb4d68acbd8f98e7a232c398', '审批结果', 'STRING', 4, 1, 1, 0, '{"code":"NODE_APPROVE_RESULT","type":"SELECT","choice":[{"key":"false","name":"\\u62d2\\u7edd"},{"key":"true","name":"\\u901a\\u8fc7"}]}');
INSERT INTO bk_itsm.workflow_globalvariable (id, creator, create_at, update_at, updated_by, end_at, `key`, name, type, state_id, flow_id, is_valid, is_deleted, meta) VALUES (2, null, '2022-04-04 18:29:34.412914', '2022-04-04 18:29:34.412925', null, null, '4047de3c051c98acc6896ede7ea3d0eb', '审批结果', 'STRING', 5, 1, 1, 0, '{"code":"NODE_APPROVE_RESULT","type":"SELECT","choice":[{"key":"false","name":"\\u62d2\\u7edd"},{"key":"true","name":"\\u901a\\u8fc7"}]}');
INSERT INTO bk_itsm.workflow_globalvariable (id, creator, create_at, update_at, updated_by, end_at, `key`, name, type, state_id, flow_id, is_valid, is_deleted, meta) VALUES (3, null, '2022-04-04 18:29:34.438918', '2022-04-04 18:29:34.438929', null, null, 'd93af9432ab455cd19921933884ebca8', '审批结果', 'STRING', 9, 2, 1, 0, '{"code":"NODE_APPROVE_RESULT","type":"SELECT","choice":[{"key":"false","name":"\\u62d2\\u7edd"},{"key":"true","name":"\\u901a\\u8fc7"}]}');
INSERT INTO bk_itsm.workflow_globalvariable (id, creator, create_at, update_at, updated_by, end_at, `key`, name, type, state_id, flow_id, is_valid, is_deleted, meta) VALUES (4, null, '2022-04-04 18:29:34.977213', '2022-04-04 18:29:34.977224', null, null, '5345ad70361eac9de31a70114694524d', '审批结果', 'STRING', 15, 3, 1, 0, '{"code":"NODE_APPROVE_RESULT","type":"SELECT","choice":[{"key":"false","name":"\\u62d2\\u7edd"},{"key":"true","name":"\\u901a\\u8fc7"}]}');
INSERT INTO bk_itsm.workflow_globalvariable (id, creator, create_at, update_at, updated_by, end_at, `key`, name, type, state_id, flow_id, is_valid, is_deleted, meta) VALUES (5, null, '2022-04-04 18:29:35.038000', '2022-04-04 18:29:35.038011', null, null, 'd8f97aac22716f21d133e9ce44246ddb', '审批结果', 'STRING', 20, 4, 1, 0, '{"code":"NODE_APPROVE_RESULT","type":"SELECT","choice":[{"key":"false","name":"\\u62d2\\u7edd"},{"key":"true","name":"\\u901a\\u8fc7"}]}');
INSERT INTO bk_itsm.workflow_globalvariable (id, creator, create_at, update_at, updated_by, end_at, `key`, name, type, state_id, flow_id, is_valid, is_deleted, meta) VALUES (6, null, '2022-04-04 18:29:35.074320', '2022-04-04 18:29:35.074331', null, null, '4b33187868619f01637be734862f3766', '审批结果', 'STRING', 24, 5, 1, 0, '{"code":"NODE_APPROVE_RESULT","type":"SELECT","choice":[{"key":"false","name":"\\u62d2\\u7edd"},{"key":"true","name":"\\u901a\\u8fc7"}]}');
