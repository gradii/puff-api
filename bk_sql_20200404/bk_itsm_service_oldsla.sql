create table service_oldsla
(
    id         int auto_increment
        primary key,
    creator    varchar(64)  not null,
    create_at  datetime(6)  not null,
    update_at  datetime(6)  not null,
    updated_by varchar(64)  not null,
    end_at     datetime(6)  null,
    is_deleted tinyint(1)   not null,
    is_builtin tinyint(1)   not null,
    name       varchar(255) not null,
    level      int          not null,
    resp_time  varchar(64)  not null,
    deal_time  varchar(64)  not null,
    `desc`     varchar(255) null,
    `key`      varchar(255) not null
);

