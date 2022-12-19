create table template_permtemplate
(
    id            int auto_increment
        primary key,
    creator       varchar(64)  not null,
    updater       varchar(64)  not null,
    created_time  datetime(6)  not null,
    updated_time  datetime(6)  not null,
    name          varchar(128) not null,
    system_id     varchar(32)  not null,
    description   varchar(255) not null,
    action_ids    longtext     not null,
    subject_count int          not null
);

create index template_permtemplate_system_id_ac1d7982_idx
    on template_permtemplate (system_id);

