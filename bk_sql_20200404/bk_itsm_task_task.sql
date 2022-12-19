create table task_task
(
    id              int auto_increment
        primary key,
    creator         varchar(64)  not null,
    create_at       datetime(6)  not null,
    update_at       datetime(6)  not null,
    updated_by      varchar(64)  not null,
    is_deleted      tinyint(1)   not null,
    ticket_id       int          not null,
    name            varchar(255) not null,
    component_type  varchar(64)  not null,
    inputs          longtext     not null,
    outputs         longtext     not null,
    `order`         int          not null,
    status          varchar(64)  not null,
    start_at        datetime(6)  null,
    end_at          datetime(6)  null,
    activity_id     varchar(64)  not null,
    processors      varchar(255) null,
    processors_type varchar(32)  not null,
    task_schema_id  int          not null,
    executor        varchar(64)  not null,
    confirmer       varchar(64)  not null,
    pipeline_data   longtext     not null,
    state_id        int          not null
);

