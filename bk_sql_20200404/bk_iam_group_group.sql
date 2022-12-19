create table group_group
(
    id               int auto_increment
        primary key,
    creator          varchar(64)  not null,
    updater          varchar(64)  not null,
    created_time     datetime(6)  not null,
    updated_time     datetime(6)  not null,
    name             varchar(128) not null,
    description      varchar(512) not null,
    user_count       int          not null,
    department_count int          not null
);

