create table workflow_taskschema
(
    id             int auto_increment
        primary key,
    creator        varchar(64)    null,
    create_at      datetime(6)    not null,
    update_at      datetime(6)    not null,
    updated_by     varchar(64)    null,
    end_at         datetime(6)    null,
    is_deleted     tinyint(1)     not null,
    name           varchar(128)   not null,
    component_type varchar(64)    not null,
    `desc`         varchar(1000)  not null,
    is_draft       tinyint(1)     not null,
    is_enabled     tinyint(1)     not null,
    inputs         longtext       not null,
    is_builtin     tinyint(1)     not null,
    can_edit       tinyint(1)     not null,
    owners         varchar(10000) not null
);

create index workflow_taskschema_is_deleted_52b0d85c
    on workflow_taskschema (is_deleted);

INSERT INTO bk_itsm.workflow_taskschema (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, component_type, `desc`, is_draft, is_enabled, inputs, is_builtin, can_edit, owners) VALUES (1, null, '2022-04-04 18:29:35.467647', '2022-04-04 18:29:35.467676', null, null, 0, '标准运维任务模板', 'SOPS', '', 0, 1, '{}', 1, 1, '');
