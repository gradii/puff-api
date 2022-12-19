create table approval_actionprocessrelation
(
    id           int auto_increment
        primary key,
    creator      varchar(64) not null,
    updater      varchar(64) not null,
    created_time datetime(6) not null,
    updated_time datetime(6) not null,
    system_id    varchar(32) not null,
    action_id    varchar(32) not null,
    process_id   int         not null
);

