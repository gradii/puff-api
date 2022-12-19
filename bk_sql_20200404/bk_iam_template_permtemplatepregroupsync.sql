create table template_permtemplatepregroupsync
(
    id           int auto_increment
        primary key,
    creator      varchar(64) not null,
    updater      varchar(64) not null,
    created_time datetime(6) not null,
    updated_time datetime(6) not null,
    template_id  int         not null,
    group_id     int         not null,
    status       varchar(32) not null,
    data         longblob    not null,
    constraint template_permtemplatepre_template_id_group_id_58db7e3c_uniq
        unique (template_id, group_id)
);

