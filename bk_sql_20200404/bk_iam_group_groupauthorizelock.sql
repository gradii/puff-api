create table group_groupauthorizelock
(
    id          int auto_increment
        primary key,
    group_id    int         not null,
    template_id int         not null,
    system_id   varchar(32) not null,
    `key`       varchar(32) not null,
    data        longblob    not null,
    constraint group_groupauthorizelock_template_id_group_id_sys_991e8ff9_uniq
        unique (template_id, group_id, system_id)
);

