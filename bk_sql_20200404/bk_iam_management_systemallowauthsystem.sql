create table management_systemallowauthsystem
(
    id             int auto_increment
        primary key,
    creator        varchar(64) not null,
    updater        varchar(64) not null,
    created_time   datetime(6) not null,
    updated_time   datetime(6) not null,
    system_id      varchar(32) not null,
    auth_system_id varchar(32) not null
);

create index management_systemallowaut_system_id_auth_system_id_66c3d887_idx
    on management_systemallowauthsystem (system_id, auth_system_id);

