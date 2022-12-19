create table user_settings_setting
(
    id          int auto_increment
        primary key,
    create_time datetime(6) not null,
    update_time datetime(6) not null,
    value       longtext    not null,
    enabled     tinyint(1)  not null,
    category_id int         null,
    meta_id     int         not null,
    constraint user_settings_settin_category_id_ade113a6_fk_categorie
        foreign key (category_id) references categories_profilecategory (id),
    constraint user_settings_settin_meta_id_8b0b975f_fk_user_sett
        foreign key (meta_id) references user_settings_settingmeta (id)
);

INSERT INTO bk_user.user_settings_setting (id, create_time, update_time, value, enabled, category_id, meta_id) VALUES (1, '2022-04-04 10:24:12.239517', '2022-04-04 10:24:12.239537', '8', 1, 1, 1);
INSERT INTO bk_user.user_settings_setting (id, create_time, update_time, value, enabled, category_id, meta_id) VALUES (2, '2022-04-04 10:24:12.239876', '2022-04-04 10:24:12.239892', '["upper","lower","int"]', 1, 1, 2);
INSERT INTO bk_user.user_settings_setting (id, create_time, update_time, value, enabled, category_id, meta_id) VALUES (3, '2022-04-04 10:24:12.240181', '2022-04-04 10:24:12.240197', '30', 1, 1, 3);
INSERT INTO bk_user.user_settings_setting (id, create_time, update_time, value, enabled, category_id, meta_id) VALUES (4, '2022-04-04 10:24:12.240570', '2022-04-04 10:24:12.240585', '3', 1, 1, 4);
INSERT INTO bk_user.user_settings_setting (id, create_time, update_time, value, enabled, category_id, meta_id) VALUES (5, '2022-04-04 10:24:12.240842', '2022-04-04 10:24:12.240857', '600', 1, 1, 5);
INSERT INTO bk_user.user_settings_setting (id, create_time, update_time, value, enabled, category_id, meta_id) VALUES (6, '2022-04-04 10:24:12.241119', '2022-04-04 10:24:12.241134', '"fixed_preset"', 1, 1, 6);
INSERT INTO bk_user.user_settings_setting (id, create_time, update_time, value, enabled, category_id, meta_id) VALUES (7, '2022-04-04 10:24:12.241388', '2022-04-04 10:24:12.241403', '"bk@Ctb3mR7GHNAvUVQW"', 1, 1, 7);
INSERT INTO bk_user.user_settings_setting (id, create_time, update_time, value, enabled, category_id, meta_id) VALUES (8, '2022-04-04 10:24:12.241656', '2022-04-04 10:24:12.241671', '{"title":"\\u84dd\\u9cb8\\u667a\\u4e91\\u793e\\u533a\\u7248 - \\u60a8\\u7684\\u5e10\\u6237\\u5df2\\u7ecf\\u6210\\u529f\\u521b\\u5efa\\uff01","sender":"\\u84dd\\u9cb8\\u667a\\u4e91\\u793e\\u533a\\u7248","content":"\\u60a8\\u597d\\uff01\\u60a8\\u7684\\u84dd\\u9cb8\\u667a\\u4e91\\u793e\\u533a\\u7248\\u5e10\\u6237\\u5df2\\u7ecf\\u6210\\u529f\\u521b\\u5efa\\uff0c\\u4ee5\\u4e0b\\u662f\\u60a8\\u7684\\u5e10\\u6237\\u4fe1\\u606f:\\u767b\\u5f55\\u5e10\\u6237\\uff1a{username}\\uff0c \\u521d\\u59cb\\u767b\\u5f55\\u5bc6\\u7801\\uff1a{password} \\u4e3a\\u4e86\\u4fdd\\u969c\\u5e10\\u6237\\u5b89\\u5168\\uff0c\\u6211\\u4eec\\u5efa\\u8bae\\u60a8\\u5c3d\\u5feb\\u767b\\u5f55\\u84dd\\u9cb8\\u667a\\u4e91\\u793e\\u533a\\u7248\\u4fee\\u6539\\u5bc6\\u7801\\uff1a{url} \\u6b64\\u90ae\\u4ef6\\u4e3a\\u7cfb\\u7edf\\u81ea\\u52a8\\u53d1\\u9001\\uff0c\\u8bf7\\u52ff\\u56de\\u590d\\u3002\\u84dd\\u9cb8\\u667a\\u4e91\\u5b98\\u7f51\\uff1a http://bk.tencent.com"}', 1, 1, 8);
INSERT INTO bk_user.user_settings_setting (id, create_time, update_time, value, enabled, category_id, meta_id) VALUES (9, '2022-04-04 10:24:12.241992', '2022-04-04 10:24:12.242006', '{"title":"\\u84dd\\u9cb8\\u667a\\u4e91\\u793e\\u533a\\u7248 - \\u767b\\u5f55\\u5bc6\\u7801\\u91cd\\u7f6e","sender":"\\u84dd\\u9cb8\\u667a\\u4e91\\u793e\\u533a\\u7248","content":"\\u60a8\\u597d\\uff01\\u6211\\u4eec\\u6536\\u5230\\u4e86\\u4f60\\u91cd\\u7f6e\\u5bc6\\u7801\\u7684\\u7533\\u8bf7\\uff0c\\u8bf7\\u70b9\\u51fb\\u4e0b\\u65b9\\u94fe\\u63a5\\u8fdb\\u884c\\u5bc6\\u7801\\u91cd\\u7f6e\\uff1a{url} \\u8be5\\u94fe\\u63a5\\u6709\\u6548\\u65f6\\u95f4\\u4e3a3\\u5c0f\\u65f6\\uff0c\\u8fc7\\u671f\\u540e\\u8bf7\\u91cd\\u65b0\\u70b9\\u51fb\\u5bc6\\u7801\\u91cd\\u7f6e\\u94fe\\u63a5\\uff1a{reset_url} \\u6b64\\u90ae\\u4ef6\\u4e3a\\u7cfb\\u7edf\\u81ea\\u52a8\\u53d1\\u9001\\uff0c\\u8bf7\\u52ff\\u56de\\u590d"}', 1, 1, 9);
INSERT INTO bk_user.user_settings_setting (id, create_time, update_time, value, enabled, category_id, meta_id) VALUES (10, '2022-04-04 10:24:12.242320', '2022-04-04 10:24:12.242335', 'true', 1, 1, 10);
INSERT INTO bk_user.user_settings_setting (id, create_time, update_time, value, enabled, category_id, meta_id) VALUES (11, '2022-04-04 10:24:12.242587', '2022-04-04 10:24:12.242602', 'true', 1, 1, 11);
INSERT INTO bk_user.user_settings_setting (id, create_time, update_time, value, enabled, category_id, meta_id) VALUES (12, '2022-04-04 10:24:12.242854', '2022-04-04 10:24:12.242869', '180', 1, 1, 12);
