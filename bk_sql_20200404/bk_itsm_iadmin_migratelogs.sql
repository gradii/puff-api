create table iadmin_migratelogs
(
    id           int auto_increment
        primary key,
    version_from varchar(64) not null,
    version_to   varchar(64) not null,
    operator     varchar(64) not null,
    create_at    datetime(6) not null,
    note         longtext    null,
    exe_func     longtext    not null,
    is_finished  tinyint(1)  not null,
    is_success   tinyint(1)  not null
);

