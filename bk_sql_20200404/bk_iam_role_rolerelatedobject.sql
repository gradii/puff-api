create table role_rolerelatedobject
(
    id           int auto_increment
        primary key,
    creator      varchar(64) not null,
    updater      varchar(64) not null,
    created_time datetime(6) not null,
    updated_time datetime(6) not null,
    role_id      int         not null,
    object_type  varchar(32) not null,
    object_id    int         not null,
    constraint role_rolerelatedobject_role_id_object_type_obje_49076201_uniq
        unique (role_id, object_type, object_id)
);

