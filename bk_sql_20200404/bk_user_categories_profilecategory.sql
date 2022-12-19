create table categories_profilecategory
(
    id               int auto_increment
        primary key,
    create_time      datetime(6) not null,
    update_time      datetime(6) not null,
    type             varchar(32) not null,
    description      longtext    null,
    display_name     varchar(64) not null,
    domain           varchar(64) not null,
    `default`        tinyint(1)  not null,
    enabled          tinyint(1)  not null,
    last_synced_time datetime(6) null,
    `order`          int         not null,
    status           varchar(32) not null,
    constraint domain
        unique (domain)
);

INSERT INTO bk_user.categories_profilecategory (id, create_time, update_time, type, description, display_name, domain, `default`, enabled, last_synced_time, `order`, status) VALUES (1, '2022-04-04 10:24:11.066588', '2022-04-04 10:24:11.066619', 'local', '支持本地用户的新增、删除、编辑、查询，以及用户的登陆认证。', '默认目录', 'default.local', 1, 1, null, 1, 'normal');
