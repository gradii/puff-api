create table core_project
(
    id         int auto_increment
        primary key,
    name       varchar(192) not null,
    time_zone  varchar(100) not null,
    creator    varchar(256) not null,
    `desc`     varchar(512) not null,
    create_at  datetime(6)  not null,
    from_cmdb  tinyint(1)   not null,
    bk_biz_id  int          not null,
    is_disable tinyint(1)   not null,
    constraint core_project_bk_biz_id_name_02388f70_uniq
        unique (bk_biz_id, name)
);

