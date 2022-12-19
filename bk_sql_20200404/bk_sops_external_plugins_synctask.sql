create table external_plugins_synctask
(
    id            int auto_increment
        primary key,
    creator       varchar(32) not null,
    create_method varchar(32) not null,
    start_time    datetime(6) not null,
    finish_time   datetime(6) null,
    status        varchar(32) not null,
    details       longtext    not null
);

