create table role_roleusersystempermission
(
    id           int auto_increment
        primary key,
    creator      varchar(64) not null,
    updater      varchar(64) not null,
    created_time datetime(6) not null,
    updated_time datetime(6) not null,
    role_id      int         not null,
    content      longtext    not null
);

INSERT INTO bk_iam.role_roleusersystempermission (id, creator, updater, created_time, updated_time, role_id, content) VALUES (1, '', '', '2022-04-04 10:27:35.080940', '2022-04-04 10:27:35.080957', 1, '{"enabled_users":["admin"],"global_enabled":false}');
