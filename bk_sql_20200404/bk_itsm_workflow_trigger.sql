create table workflow_trigger
(
    id            int auto_increment
        primary key,
    creator       varchar(64)  null,
    create_at     datetime(6)  not null,
    update_at     datetime(6)  not null,
    updated_by    varchar(64)  null,
    end_at        datetime(6)  null,
    is_deleted    tinyint(1)   not null,
    name          varchar(64)  not null,
    component_key varchar(64)  not null,
    type          varchar(32)  not null,
    `condition`   varchar(255) not null,
    inputs        varchar(255) not null,
    state_id      int          null,
    workflow_id   int          null
);

create index workflow_trigger_is_deleted_5b9ee6fc
    on workflow_trigger (is_deleted);

