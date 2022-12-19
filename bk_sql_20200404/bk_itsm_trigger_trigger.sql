create table trigger_trigger
(
    id              int auto_increment
        primary key,
    creator         varchar(64)   not null,
    create_at       datetime(6)   not null,
    update_at       datetime(6)   not null,
    updated_by      varchar(64)   not null,
    is_deleted      tinyint(1)    not null,
    name            varchar(64)   not null,
    signal          varchar(128)  not null,
    sender          varchar(64)   not null,
    inputs          longtext      not null,
    source_type     varchar(64)   not null,
    source_id       int           null,
    is_draft        tinyint(1)    not null,
    is_enabled      tinyint(1)    not null,
    icon            varchar(64)   not null,
    `desc`          varchar(1000) not null,
    source_table_id int           not null
);

