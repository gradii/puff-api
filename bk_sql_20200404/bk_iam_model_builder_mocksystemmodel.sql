create table model_builder_mocksystemmodel
(
    id           int auto_increment
        primary key,
    creator      varchar(64)  not null,
    updater      varchar(64)  not null,
    created_time datetime(6)  not null,
    updated_time datetime(6)  not null,
    system_id    varchar(128) not null,
    owner        varchar(64)  not null,
    data         longtext     not null,
    constraint model_builder_mocksystemmodel_system_id_owner_82ee7708_uniq
        unique (system_id, owner)
);

