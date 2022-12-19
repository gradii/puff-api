create table core_resourceconfig
(
    id          int auto_increment
        primary key,
    project_id  int          not null,
    name        varchar(255) not null,
    config_type varchar(255) not null,
    creator     varchar(255) null,
    data        longtext     not null,
    create_time datetime(6)  null,
    constraint core_resourceconfig_project_id_name_config_type_5632a7f4_uniq
        unique (project_id, name, config_type)
);

