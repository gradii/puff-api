create table engine_status
(
    id               varchar(32) not null
        primary key,
    state            varchar(10) not null,
    name             varchar(64) not null,
    retry            int         not null,
    `loop`           int         not null,
    skip             tinyint(1)  not null,
    created_time     datetime(6) not null,
    started_time     datetime(6) null,
    archived_time    datetime(6) null,
    version          varchar(32) not null,
    error_ignorable  tinyint(1)  not null,
    state_refresh_at datetime(6) null
);

create index engine_status_created_time_777eadc5
    on engine_status (created_time);

