create table system_info
(
    id         varchar(32)                         not null
        primary key,
    created_at timestamp default CURRENT_TIMESTAMP not null,
    updated_at timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP
);

INSERT INTO bkiam.system_info (id, created_at, updated_at) VALUES ('bk_itsm', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.system_info (id, created_at, updated_at) VALUES ('bk_nodeman', '2022-04-04 06:43:23', '2022-04-04 06:43:23');
INSERT INTO bkiam.system_info (id, created_at, updated_at) VALUES ('bk_paas', '2022-04-04 06:23:08', '2022-04-04 06:23:08');
INSERT INTO bkiam.system_info (id, created_at, updated_at) VALUES ('bk_sops', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.system_info (id, created_at, updated_at) VALUES ('bk_usermgr', '2022-04-04 06:24:16', '2022-04-04 06:24:16');
