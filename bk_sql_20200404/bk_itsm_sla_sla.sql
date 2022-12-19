create table sla_sla
(
    id         int auto_increment
        primary key,
    creator    varchar(64)  not null,
    create_at  datetime(6)  not null,
    update_at  datetime(6)  not null,
    updated_by varchar(64)  not null,
    is_deleted tinyint(1)   not null,
    name       varchar(255) not null,
    is_enabled tinyint(1)   not null,
    is_builtin tinyint(1)   not null
);

INSERT INTO bk_itsm.sla_sla (id, creator, create_at, update_at, updated_by, is_deleted, name, is_enabled, is_builtin) VALUES (1, '', '2022-04-04 18:29:35.543621', '2022-04-04 18:29:35.545487', '', 0, '5*8', 1, 1);
INSERT INTO bk_itsm.sla_sla (id, creator, create_at, update_at, updated_by, is_deleted, name, is_enabled, is_builtin) VALUES (2, '', '2022-04-04 18:29:35.548212', '2022-04-04 18:29:35.550034', '', 0, '7*24', 1, 1);
