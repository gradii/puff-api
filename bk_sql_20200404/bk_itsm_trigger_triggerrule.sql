create table trigger_triggerrule
(
    id             int auto_increment
        primary key,
    creator        varchar(64)  not null,
    create_at      datetime(6)  not null,
    update_at      datetime(6)  not null,
    updated_by     varchar(64)  not null,
    is_deleted     tinyint(1)   not null,
    `condition`    longtext     not null,
    action_schemas varchar(255) not null,
    trigger_id     int          null,
    by_condition   tinyint(1)   not null,
    name           varchar(64)  not null
);

