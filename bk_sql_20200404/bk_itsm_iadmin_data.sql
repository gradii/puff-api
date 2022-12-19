create table iadmin_data
(
    id        int auto_increment
        primary key,
    `key`     varchar(128) not null,
    value     longblob     not null,
    type      varchar(32)  not null,
    expire_at datetime(6)  null
);

create index iadmin_data_expire_at_08ff490a
    on iadmin_data (expire_at);

create index iadmin_data_key_e5bc4ba3
    on iadmin_data (`key`);

