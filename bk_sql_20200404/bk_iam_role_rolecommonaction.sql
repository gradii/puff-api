create table role_rolecommonaction
(
    id           int auto_increment
        primary key,
    creator      varchar(64)  not null,
    updater      varchar(64)  not null,
    created_time datetime(6)  not null,
    updated_time datetime(6)  not null,
    role_id      int          not null,
    system_id    varchar(32)  not null,
    name         varchar(128) not null,
    name_en      varchar(128) not null,
    action_ids   longtext     not null
);

create index role_rolecommonaction_role_id_system_id_a8476c06_idx
    on role_rolecommonaction (role_id, system_id);

