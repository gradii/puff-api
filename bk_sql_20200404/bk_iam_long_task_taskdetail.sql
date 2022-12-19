create table long_task_taskdetail
(
    id           int auto_increment
        primary key,
    creator      varchar(64) not null,
    updater      varchar(64) not null,
    created_time datetime(6) not null,
    updated_time datetime(6) not null,
    type         varchar(32) not null,
    args         longtext    not null,
    params       longtext    not null,
    unique_sign  varchar(64) not null,
    status       int         not null,
    celery_id    varchar(36) not null,
    results      longtext    not null
);

