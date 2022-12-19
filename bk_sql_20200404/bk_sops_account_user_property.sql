create table account_user_property
(
    id      int auto_increment
        primary key,
    `key`   varchar(64) not null,
    value   longtext    not null,
    user_id int         not null,
    constraint account_user_property_user_id_key_652c804e_uniq
        unique (user_id, `key`),
    constraint account_user_property_user_id_f10c8a01_fk_account_user_id
        foreign key (user_id) references account_user (id)
);

INSERT INTO bk_sops.account_user_property (id, `key`, value, user_id) VALUES (1, 'qq', '', 1);
INSERT INTO bk_sops.account_user_property (id, `key`, value, user_id) VALUES (2, 'language', 'zh-cn', 1);
INSERT INTO bk_sops.account_user_property (id, `key`, value, user_id) VALUES (3, 'time_zone', 'Asia/Shanghai', 1);
INSERT INTO bk_sops.account_user_property (id, `key`, value, user_id) VALUES (4, 'role', '1', 1);
INSERT INTO bk_sops.account_user_property (id, `key`, value, user_id) VALUES (5, 'phone', '', 1);
INSERT INTO bk_sops.account_user_property (id, `key`, value, user_id) VALUES (6, 'email', '', 1);
INSERT INTO bk_sops.account_user_property (id, `key`, value, user_id) VALUES (7, 'wx_userid', '', 1);
INSERT INTO bk_sops.account_user_property (id, `key`, value, user_id) VALUES (8, 'chname', '', 1);
