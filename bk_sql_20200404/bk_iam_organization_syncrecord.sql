create table organization_syncrecord
(
    id           int auto_increment
        primary key,
    created_time datetime(6) not null,
    updated_time datetime(6) not null,
    executor     varchar(64) not null,
    type         varchar(16) not null,
    status       varchar(16) not null
);

