create table role_rolesource
(
    id               int auto_increment
        primary key,
    creator          varchar(64) not null,
    updater          varchar(64) not null,
    created_time     datetime(6) not null,
    updated_time     datetime(6) not null,
    role_id          int         not null,
    source_type      varchar(32) not null,
    source_system_id varchar(32) not null,
    constraint role_id
        unique (role_id)
);

