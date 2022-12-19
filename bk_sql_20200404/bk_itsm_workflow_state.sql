create table workflow_state
(
    id               int auto_increment
        primary key,
    creator          varchar(64)    null,
    create_at        datetime(6)    not null,
    update_at        datetime(6)    not null,
    updated_by       varchar(64)    null,
    end_at           datetime(6)    null,
    is_deleted       tinyint(1)     not null,
    name             varchar(64)    not null,
    `desc`           varchar(64)    null,
    type             varchar(32)    not null,
    processors_type  varchar(32)    not null,
    processors       longtext       null,
    distribute_type  varchar(32)    not null,
    notify_rule      varchar(32)    not null,
    notify_freq      int            not null,
    fields           longtext       null,
    extras           varchar(20000) null,
    is_draft         tinyint(1)     not null,
    is_builtin       tinyint(1)     not null,
    workflow_id      int            not null,
    is_terminable    tinyint(1)     not null,
    followers        varchar(255)   null,
    followers_type   varchar(32)    not null,
    api_instance_id  int            null,
    assignors        longtext       null,
    assignors_type   varchar(32)    not null,
    axis             varchar(128)   not null,
    can_deliver      tinyint(1)     not null,
    delivers         longtext       null,
    delivers_type    varchar(32)    not null,
    label            varchar(255)   not null,
    variables        longtext       null,
    tag              varchar(255)   not null,
    read_only_fields longtext       null,
    finish_condition longtext       not null,
    is_sequential    tinyint(1)     not null,
    is_multi         tinyint(1)     not null,
    constraint workflow_state_workflow_id_ef53cea4_fk_workflow_workflow_id
        foreign key (workflow_id) references workflow_workflow (id)
);

create index workflow_state_is_deleted_37d5c517
    on workflow_state (is_deleted);

INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (1, null, '2022-04-04 18:29:34.409136', '2022-04-04 18:29:34.423774', null, null, 0, '开始', '', 'START', 'OPEN', '', 'PROCESS', 'NONE', 0, '[]', '{}', 0, 1, 1, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":150,"y":150}', 0, '', 'EMPTY', 'EMPTY', '{"inputs":[],"outputs":[]}', 'DEFAULT', '[]', '{}', 0, 0);
INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (2, null, '2022-04-04 18:29:34.409860', '2022-04-04 18:29:34.424458', null, null, 0, '提单', '', 'NORMAL', 'OPEN', '', 'PROCESS', 'NONE', 0, '[1,2,3,4]', '{"ticket_status":{"name":"NEW","type":"custom"}}', 0, 1, 1, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":215,"y":150}', 0, '', 'EMPTY', 'EMPTY', '{"inputs":[],"outputs":[]}', 'DEFAULT', '[]', '{}', 0, 0);
INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (3, null, '2022-04-04 18:29:34.410535', '2022-04-04 18:29:34.425099', null, null, 0, '结束', '', 'END', 'OPEN', '', 'PROCESS', 'NONE', 0, '[]', '{}', 0, 1, 1, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":720,"y":275}', 0, '', 'EMPTY', 'EMPTY', '{"inputs":[],"outputs":[]}', 'DEFAULT', '[]', '{}', 0, 0);
INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (4, null, '2022-04-04 18:29:34.411184', '2022-04-04 18:29:34.425779', null, null, 0, '负责人审批', '', 'APPROVAL', 'VARIABLE', 'ZHIDINGSHENPIREN', 'PROCESS', 'NONE', 0, '[5,6,7]', '{"ticket_status":{"name":"RUNNING","type":"custom"}}', 0, 0, 1, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":440,"y":150}', 1, '', 'OPEN', 'EMPTY', '{"inputs":[],"outputs":[{"source":"global","state":24,"type":"STRING","key":"ef1ecec2fb4d68acbd8f98e7a232c398","name":"\\u5ba1\\u6279\\u7ed3\\u679c","meta":{"code":"NODE_APPROVE_RESULT","type":"SELECT","choice":[{"key":"false","name":"\\u62d2\\u7edd"},{"key":"true","name":"\\u901a\\u8fc7"}]}}]}', 'DEFAULT', '[]', '{}', 0, 0);
INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (5, null, '2022-04-04 18:29:34.412346', '2022-04-04 18:29:34.426528', null, null, 0, '管理员审批', '', 'APPROVAL', 'PERSON', 'admin', 'PROCESS', 'NONE', 0, '[8,9,10]', '{"ticket_status":{"name":"","type":"keep"}}', 0, 0, 1, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":665,"y":150}', 0, '', 'EMPTY', 'EMPTY', '{"inputs":[],"outputs":[{"source":"global","state":25,"type":"STRING","key":"4047de3c051c98acc6896ede7ea3d0eb","name":"\\u5ba1\\u6279\\u7ed3\\u679c","meta":{"code":"NODE_APPROVE_RESULT","type":"SELECT","choice":[{"key":"false","name":"\\u62d2\\u7edd"},{"key":"true","name":"\\u901a\\u8fc7"}]}}]}', 'DEFAULT', '[]', '{}', 0, 0);
INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (6, null, '2022-04-04 18:29:34.436292', '2022-04-04 18:29:34.460766', null, null, 0, '开始', '', 'START', 'OPEN', '', 'PROCESS', 'NONE', 0, '[]', '{}', 0, 1, 2, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":105,"y":155}', 0, '', 'EMPTY', 'EMPTY', '{"inputs":[],"outputs":[]}', 'DEFAULT', '[]', '{}', 0, 0);
INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (7, null, '2022-04-04 18:29:34.437033', '2022-04-04 18:29:34.461414', null, null, 0, '变更提单', '', 'NORMAL', 'OPEN', '', 'PROCESS', 'NONE', 0, '[11,20,12,13,19,14,26,22,18]', '{"ticket_status":{"name":"","type":"keep"}}', 0, 1, 2, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":180,"y":155}', 0, '', 'EMPTY', 'EMPTY', '{"inputs":[],"outputs":[]}', 'DEFAULT', '[]', '{}', 0, 0);
INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (8, null, '2022-04-04 18:29:34.437695', '2022-04-04 18:29:34.462034', null, null, 0, '结束', '', 'END', 'OPEN', '', 'PROCESS', 'NONE', 0, '[]', '{}', 0, 1, 2, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":1415,"y":155}', 0, '', 'EMPTY', 'EMPTY', '{"inputs":[],"outputs":[]}', 'DEFAULT', '[]', '{}', 0, 0);
INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (9, null, '2022-04-04 18:29:34.438346', '2022-04-04 18:29:34.462643', null, null, 0, '负责人审核', '', 'APPROVAL', 'PERSON', 'admin', 'PROCESS', 'NONE', 0, '[15,16,17]', '{"ticket_status":{"name":"","type":"keep"}}', 0, 0, 2, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":410,"y":155}', 1, '', 'OPEN', 'EMPTY', '{"inputs":[],"outputs":[{"source":"global","state":85,"type":"STRING","key":"d93af9432ab455cd19921933884ebca8","name":"\\u5ba1\\u6279\\u7ed3\\u679c","meta":{"code":"NODE_APPROVE_RESULT","type":"SELECT","choice":[{"key":"false","name":"\\u62d2\\u7edd"},{"key":"true","name":"\\u901a\\u8fc7"}]}}]}', 'DEFAULT', '[]', '{}', 0, 0);
INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (10, null, '2022-04-04 18:29:34.439378', '2022-04-04 18:29:34.463295', null, null, 0, '运维确认', '', 'NORMAL', 'STARTER', '', 'PROCESS', 'NONE', 0, '[27,28,21]', '{"ticket_status":{"name":"RUNNING","type":"custom"}}', 0, 0, 2, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":680,"y":155}', 1, '', 'OPEN', 'EMPTY', '{"inputs":[],"outputs":[{"key":"FABUCHULIREN","type":"RADIO","source":"field","state":88}]}', 'DEFAULT', '[]', '{}', 0, 0);
INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (11, null, '2022-04-04 18:29:34.440029', '2022-04-04 18:29:34.463909', null, null, 0, '测试验证', '', 'NORMAL', 'STARTER', '', 'PROCESS', 'NONE', 0, '[23,24,25]', '{"ticket_status":{"name":"CONFIRMED","type":"custom"}}', 0, 0, 2, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":1180,"y":155}', 1, '', 'OPEN', 'EMPTY', '{"inputs":[],"outputs":[{"key":"YANZHENGJIEGUO","type":"RADIO","source":"field","state":10}]}', 'DEFAULT', '[]', '{}', 0, 0);
INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (12, null, '2022-04-04 18:29:34.440699', '2022-04-04 18:29:34.464529', null, null, 0, '运维发布', '', 'NORMAL', 'STARTER', '', 'PROCESS', 'NONE', 0, '[30,29]', '{"ticket_status":{"name":"","type":"keep"}}', 0, 0, 2, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":920,"y":155}', 1, '', 'OPEN', 'EMPTY', '{"inputs":[],"outputs":[]}', 'DEFAULT', '[]', '{}', 0, 0);
INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (13, null, '2022-04-04 18:29:34.969101', '2022-04-04 18:29:34.969126', null, null, 0, '开始', '', 'START', 'OPEN', '', 'PROCESS', 'NONE', 0, '[]', '{}', 0, 1, 3, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":150,"y":150}', 0, '', 'EMPTY', 'G', '{"inputs":[],"outputs":[]}', 'DEFAULT', '[]', '{}', 0, 0);
INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (14, null, '2022-04-04 18:29:34.969942', '2022-04-04 18:29:34.973450', null, null, 0, '提单', '', 'NORMAL', 'OPEN', '', 'PROCESS', 'NONE', 0, '[31,32,33]', '{}', 0, 1, 3, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":285,"y":150}', 0, '', 'EMPTY', 'G', '{"inputs":[],"outputs":[]}', 'DEFAULT', '[]', '{}', 0, 0);
INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (15, null, '2022-04-04 18:29:34.974439', '2022-04-04 18:29:34.979709', null, null, 0, '内置审批节点', '', 'APPROVAL', 'VARIABLE', 'APPROVER', 'PROCESS', 'NONE', 0, '[34,35,36]', '{}', 0, 0, 3, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":575,"y":150}', 0, '', 'EMPTY', 'G', '{"inputs":[],"outputs":[{"source":"global","state":15,"type":"STRING","key":"5345ad70361eac9de31a70114694524d","name":"\\u5ba1\\u6279\\u7ed3\\u679c","meta":{"code":"NODE_APPROVE_RESULT","type":"SELECT","choice":[{"key":"false","name":"\\u62d2\\u7edd"},{"key":"true","name":"\\u901a\\u8fc7"}]}}]}', 'DEFAULT', '[]', '{}', 0, 0);
INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (16, null, '2022-04-04 18:29:34.980655', '2022-04-04 18:29:34.980667', null, null, 0, '结束', '', 'END', 'OPEN', '', 'PROCESS', 'NONE', 0, '[]', '{}', 0, 1, 3, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":890,"y":150}', 0, '', 'EMPTY', 'G', '{"inputs":[],"outputs":[]}', 'DEFAULT', '[]', '{}', 0, 0);
INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (17, null, '2022-04-04 18:29:35.035106', '2022-04-04 18:29:35.046794', null, null, 0, '开始', '', 'START', 'OPEN', '', 'PROCESS', 'NONE', 0, '[]', '{}', 0, 1, 4, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":150,"y":150}', 0, '', 'EMPTY', 'EMPTY', '{"inputs":[],"outputs":[]}', 'DEFAULT', '[]', '{}', 0, 0);
INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (18, null, '2022-04-04 18:29:35.035889', '2022-04-04 18:29:35.047497', null, null, 0, '提单', '', 'NORMAL', 'OPEN', '', 'PROCESS', 'NONE', 0, '[37,38,39,40,41]', '{"ticket_status":{"name":"","type":"keep"}}', 0, 1, 4, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":285,"y":150}', 0, '', 'EMPTY', 'EMPTY', '{"inputs":[],"outputs":[]}', 'DEFAULT', '[]', '{}', 0, 0);
INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (19, null, '2022-04-04 18:29:35.036570', '2022-04-04 18:29:35.048184', null, null, 0, '结束', '', 'END', 'OPEN', '', 'PROCESS', 'NONE', 0, '[]', '{}', 0, 1, 4, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":880,"y":150}', 0, '', 'EMPTY', 'EMPTY', '{"inputs":[],"outputs":[]}', 'DEFAULT', '[]', '{}', 0, 0);
INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (20, null, '2022-04-04 18:29:35.037237', '2022-04-04 18:29:35.048805', null, null, 0, '超级管理员审批', '', 'APPROVAL', 'IAM', '13', 'PROCESS', 'NONE', 0, '[42,43,44]', '{"ticket_status":{"name":"","type":"keep"}}', 0, 0, 4, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":540,"y":150}', 0, '', 'EMPTY', 'EMPTY', '{"inputs":[],"outputs":[{"source":"global","state":474,"type":"STRING","key":"d8f97aac22716f21d133e9ce44246ddb","name":"\\u5ba1\\u6279\\u7ed3\\u679c","meta":{"code":"NODE_APPROVE_RESULT","type":"SELECT","choice":[{"key":"false","name":"\\u62d2\\u7edd"},{"key":"true","name":"\\u901a\\u8fc7"}]}}]}', 'DEFAULT', '[]', '{}', 0, 0);
INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (21, null, '2022-04-04 18:29:35.071575', '2022-04-04 18:29:35.082839', null, null, 0, '开始', '', 'START', 'OPEN', '', 'PROCESS', 'NONE', 0, '[]', '{}', 0, 1, 5, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":150,"y":150}', 0, '', 'EMPTY', 'EMPTY', '{"inputs":[],"outputs":[]}', 'DEFAULT', '[]', '{}', 0, 0);
INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (22, null, '2022-04-04 18:29:35.072402', '2022-04-04 18:29:35.083506', null, null, 0, '提单', '', 'NORMAL', 'OPEN', '', 'PROCESS', 'NONE', 0, '[45,46,47,48,49]', '{"ticket_status":{"name":"","type":"keep"}}', 0, 1, 5, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":285,"y":150}', 0, '', 'EMPTY', 'EMPTY', '{"inputs":[],"outputs":[]}', 'DEFAULT', '[]', '{}', 0, 0);
INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (23, null, '2022-04-04 18:29:35.073069', '2022-04-04 18:29:35.084147', null, null, 0, '结束', '', 'END', 'OPEN', '', 'PROCESS', 'NONE', 0, '[]', '{}', 0, 1, 5, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":1185,"y":185}', 0, '', 'EMPTY', 'EMPTY', '{"inputs":[],"outputs":[]}', 'DEFAULT', '[]', '{}', 0, 0);
INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (24, null, '2022-04-04 18:29:35.073730', '2022-04-04 18:29:35.084757', null, null, 0, '分级管理员审批', '', 'APPROVAL', 'IAM', '15', 'PROCESS', 'NONE', 0, '[50,51,52]', '{"ticket_status":{"name":"","type":"keep"}}', 0, 0, 5, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":715,"y":155}', 0, '', 'EMPTY', 'EMPTY', '{"inputs":[],"outputs":[{"source":"global","state":488,"type":"STRING","key":"4b33187868619f01637be734862f3766","name":"\\u5ba1\\u6279\\u7ed3\\u679c","meta":{"code":"NODE_APPROVE_RESULT","type":"SELECT","choice":[{"key":"false","name":"\\u62d2\\u7edd"},{"key":"true","name":"\\u901a\\u8fc7"}]}}]}', 'DEFAULT', '[]', '{}', 0, 0);
INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (25, null, '2022-04-04 18:29:35.184961', '2022-04-04 18:29:35.203069', null, null, 0, '开始', '', 'START', 'OPEN', '', 'PROCESS', 'NONE', 0, '[]', '{}', 0, 1, 6, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":150,"y":150}', 0, '', 'EMPTY', 'EMPTY', '{"inputs":[],"outputs":[]}', 'DEFAULT', '[]', '{}', 0, 0);
INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (26, null, '2022-04-04 18:29:35.185735', '2022-04-04 18:31:01.512144', 'admin', null, 0, '提单', '', 'NORMAL', 'OPEN', '', 'PROCESS', 'NONE', 0, '[53,54,55,56,57,58,59,60,63,61,64,65]', '{"ticket_status":{"name":"","type":"keep"}}', 0, 1, 6, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":135,"y":260}', 0, '', 'EMPTY', 'EMPTY', '{"inputs":[],"outputs":[]}', 'DEFAULT', '[]', '{}', 0, 0);
INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (27, null, '2022-04-04 18:29:35.186412', '2022-04-04 18:29:35.204347', null, null, 0, '结束', '', 'END', 'OPEN', '', 'PROCESS', 'NONE', 0, '[]', '{}', 0, 1, 6, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":620,"y":150}', 0, '', 'EMPTY', 'EMPTY', '{"inputs":[],"outputs":[]}', 'DEFAULT', '[]', '{}', 0, 0);
INSERT INTO bk_itsm.workflow_state (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, type, processors_type, processors, distribute_type, notify_rule, notify_freq, fields, extras, is_draft, is_builtin, workflow_id, is_terminable, followers, followers_type, api_instance_id, assignors, assignors_type, axis, can_deliver, delivers, delivers_type, label, variables, tag, read_only_fields, finish_condition, is_sequential, is_multi) VALUES (28, null, '2022-04-04 18:29:35.187059', '2022-04-04 18:29:35.204952', null, null, 0, '评估采集容量', '', 'NORMAL', 'PERSON', 'admin', 'PROCESS', 'NONE', 0, '[66,62,67,68]', '{"ticket_status":{"name":"","type":"keep"}}', 0, 0, 6, 0, '', 'EMPTY', 0, '', 'EMPTY', '{"x":315,"y":390}', 0, '', 'EMPTY', 'EMPTY', '{"inputs":[],"outputs":[]}', 'DEFAULT', '[]', '{}', 0, 0);
