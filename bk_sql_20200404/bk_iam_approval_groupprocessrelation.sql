create table approval_groupprocessrelation
(
    id           int auto_increment
        primary key,
    creator      varchar(64) not null,
    updater      varchar(64) not null,
    created_time datetime(6) not null,
    updated_time datetime(6) not null,
    group_id     int         not null,
    process_id   int         not null
);

