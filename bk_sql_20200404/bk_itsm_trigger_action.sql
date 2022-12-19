create table trigger_action
(
    id          int auto_increment
        primary key,
    creator     varchar(64)  not null,
    create_at   datetime(6)  not null,
    update_at   datetime(6)  not null,
    updated_by  varchar(64)  not null,
    is_deleted  tinyint(1)   not null,
    signal      varchar(128) not null,
    sender      varchar(64)  not null,
    schema_id   int          not null,
    source_type varchar(64)  not null,
    source_id   int          null,
    context     longtext     not null,
    inputs      longtext     not null,
    status      varchar(64)  not null,
    end_time    datetime(6)  null,
    operator    varchar(64)  not null,
    ex_data     longtext     not null,
    rule_id     int          not null,
    trigger_id  int          not null,
    outputs     longtext     not null
);

