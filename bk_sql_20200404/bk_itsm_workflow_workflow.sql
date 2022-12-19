create table workflow_workflow
(
    id                  int auto_increment
        primary key,
    creator             varchar(64)    null,
    create_at           datetime(6)    not null,
    update_at           datetime(6)    not null,
    updated_by          varchar(64)    null,
    end_at              datetime(6)    null,
    is_deleted          tinyint(1)     not null,
    name                varchar(128)   not null,
    `desc`              varchar(255)   null,
    is_enabled          tinyint(1)     not null,
    is_draft            tinyint(1)     not null,
    is_builtin          tinyint(1)     not null,
    notify_rule         varchar(32)    not null,
    notify_freq         int            not null,
    service             varchar(64)    null,
    service_property    longtext       null,
    is_biz_needed       tinyint(1)     not null,
    master              longtext       null,
    is_supervise_needed tinyint(1)     not null,
    supervise_type      varchar(32)    not null,
    supervisor          varchar(255)   null,
    extras              longtext       not null,
    flow_type           varchar(64)    not null,
    version_number      varchar(64)    not null,
    engine_version      varchar(64)    null,
    table_id            int            null,
    is_revocable        tinyint(1)     not null,
    is_task_needed      tinyint(1)     null,
    owners              varchar(10000) not null,
    is_iam_used         tinyint(1)     not null,
    revoke_config       longtext       null,
    constraint workflow_workflow_table_id_78e59943_fk_workflow_table_id
        foreign key (table_id) references workflow_table (id)
);

create index workflow_workflow_is_deleted_c85d4a8c
    on workflow_workflow (is_deleted);

create index workflow_workflow_is_enabled_6454d601
    on workflow_workflow (is_enabled);

INSERT INTO bk_itsm.workflow_workflow (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, is_enabled, is_draft, is_builtin, notify_rule, notify_freq, service, service_property, is_biz_needed, master, is_supervise_needed, supervise_type, supervisor, extras, flow_type, version_number, engine_version, table_id, is_revocable, is_task_needed, owners, is_iam_used, revoke_config) VALUES (1, '', '2022-04-04 18:29:34.401985', '2022-04-04 18:29:34.422131', '', null, 0, '一般审批流程', '一般请求的审批流程。', 1, 0, 1, 'ONCE', 0, 'default', '{}', 0, '[]', 0, 'EMPTY', '', '{}', 'other', '20220404182934', 'PIPELINE_V1', 6, 1, 0, '', 0, '{"type":2,"state":0}');
INSERT INTO bk_itsm.workflow_workflow (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, is_enabled, is_draft, is_builtin, notify_rule, notify_freq, service, service_property, is_biz_needed, master, is_supervise_needed, supervise_type, supervisor, extras, flow_type, version_number, engine_version, table_id, is_revocable, is_task_needed, owners, is_iam_used, revoke_config) VALUES (2, '', '2022-04-04 18:29:34.428500', '2022-04-04 18:29:34.459256', '', null, 0, '变更发布', '变更发布流程', 1, 0, 1, 'ONCE', 0, 'default', '{}', 1, '[]', 0, 'EMPTY', '', '{"task_settings":{}}', 'other', '20220404182934', 'PIPELINE_V1', 2, 1, 0, '', 0, '{"type":2,"state":0}');
INSERT INTO bk_itsm.workflow_workflow (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, is_enabled, is_draft, is_builtin, notify_rule, notify_freq, service, service_property, is_biz_needed, master, is_supervise_needed, supervise_type, supervisor, extras, flow_type, version_number, engine_version, table_id, is_revocable, is_task_needed, owners, is_iam_used, revoke_config) VALUES (3, '', '2022-04-04 18:29:34.965175', '2022-04-04 18:29:34.982685', 'admin', null, 0, '内置审批流', '', 1, 0, 1, 'ONCE', 0, 'default', '{}', 0, '[]', 0, 'EMPTY', '', '{"biz_related":false,"need_urge":false,"urgers_type":"EMPTY","urgers":"","task_settings":{"task_schema_ids":[],"create_task_state":0,"execute_task_state":0,"execute_as_chain":false,"need_task_finished":true}}', 'internal', '0', null, 1, 1, 0, '', 0, '{"type":2,"state":0}');
INSERT INTO bk_itsm.workflow_workflow (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, is_enabled, is_draft, is_builtin, notify_rule, notify_freq, service, service_property, is_biz_needed, master, is_supervise_needed, supervise_type, supervisor, extras, flow_type, version_number, engine_version, table_id, is_revocable, is_task_needed, owners, is_iam_used, revoke_config) VALUES (4, '', '2022-04-04 18:29:35.022805', '2022-04-04 18:29:35.045005', '', null, 0, '默认审批流程', '', 1, 0, 1, 'ONCE', 0, 'default', '{}', 0, '[]', 0, 'EMPTY', '', '{}', 'other', '20220404182935', 'PIPELINE_V1', 7, 1, 0, '', 1, '{"type":2,"state":0}');
INSERT INTO bk_itsm.workflow_workflow (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, is_enabled, is_draft, is_builtin, notify_rule, notify_freq, service, service_property, is_biz_needed, master, is_supervise_needed, supervise_type, supervisor, extras, flow_type, version_number, engine_version, table_id, is_revocable, is_task_needed, owners, is_iam_used, revoke_config) VALUES (5, '', '2022-04-04 18:29:35.052586', '2022-04-04 18:29:35.081249', '', null, 0, '用户组审批流程', '', 1, 0, 1, 'ONCE', 0, 'default', '{}', 0, '[]', 0, 'EMPTY', '', '{}', 'other', '20220404182935', 'PIPELINE_V1', 8, 1, 0, '', 1, '{"type":2,"state":0}');
INSERT INTO bk_itsm.workflow_workflow (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, is_enabled, is_draft, is_builtin, notify_rule, notify_freq, service, service_property, is_biz_needed, master, is_supervise_needed, supervise_type, supervisor, extras, flow_type, version_number, engine_version, table_id, is_revocable, is_task_needed, owners, is_iam_used, revoke_config) VALUES (6, '', '2022-04-04 18:29:35.174935', '2022-04-04 18:29:35.201551', '', null, 0, '日志平台-日志容量评估', '', 1, 0, 1, 'ONCE', 0, 'default', '{}', 1, '[]', 0, 'EMPTY', '', '{}', 'other', '20220404182935', 'PIPELINE_V1', 9, 0, 0, '', 0, '{"state":0,"type":2}');
