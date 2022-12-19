create table template_permtemplatepreupdatelock
(
    id           int auto_increment
        primary key,
    creator      varchar(64) not null,
    updater      varchar(64) not null,
    created_time datetime(6) not null,
    updated_time datetime(6) not null,
    template_id  int         not null,
    status       varchar(32) not null,
    action_ids   longblob    not null,
    constraint template_permtemplatepreupdatelock_template_id_d4b94895_uniq
        unique (template_id)
);

