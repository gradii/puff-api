create table role_bkuserrole
(
    id        int auto_increment
        primary key,
    username  varchar(64) not null,
    roles     longtext    null,
    uid       varchar(64) null,
    update_at datetime(6) not null
);

INSERT INTO bk_itsm.role_bkuserrole (id, username, roles, uid, update_at) VALUES (1, 'admin', '{"cmdb":{},"organization":["1"]}', '', '2022-04-04 19:54:36.649380');
