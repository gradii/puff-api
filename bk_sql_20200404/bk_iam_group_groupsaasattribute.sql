create table group_groupsaasattribute
(
    id           int auto_increment
        primary key,
    created_time datetime(6) not null,
    updated_time datetime(6) not null,
    group_id     int         not null,
    `key`        varchar(32) not null,
    value        varchar(64) not null,
    constraint group_groupsaasattribute_group_id_key_66ae6e2e_uniq
        unique (group_id, `key`)
);

