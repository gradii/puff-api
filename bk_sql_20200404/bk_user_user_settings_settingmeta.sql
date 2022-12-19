create table user_settings_settingmeta
(
    id            int auto_increment
        primary key,
    create_time   datetime(6) not null,
    update_time   datetime(6) not null,
    `key`         varchar(64) not null,
    enabled       tinyint(1)  not null,
    example       longtext    not null,
    `default`     longtext    not null,
    choices       longtext    not null,
    required      tinyint(1)  not null,
    namespace     varchar(32) not null,
    region        varchar(32) not null,
    category_type varchar(32) not null,
    constraint user_settings_settingmet_key_namespace_category_t_42ca50ce_uniq
        unique (`key`, namespace, category_type)
);

create index user_settings_settingmeta_namespace_82a8a263
    on user_settings_settingmeta (namespace);

INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (1, '2022-04-04 10:24:12.140956', '2022-04-04 10:24:12.140987', 'password_min_length', 1, '8', '8', '[]', 1, 'password', 'default', 'local');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (2, '2022-04-04 10:24:12.141605', '2022-04-04 10:24:12.141622', 'password_must_includes', 1, '["upper","lower","int"]', '["upper","lower","int"]', '[]', 1, 'password', 'default', 'local');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (3, '2022-04-04 10:24:12.141945', '2022-04-04 10:24:12.141961', 'password_valid_days', 1, '30', '30', '[]', 1, 'password', 'default', 'local');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (4, '2022-04-04 10:24:12.142263', '2022-04-04 10:24:12.142279', 'max_trail_times', 1, '3', '3', '[]', 1, 'password', 'default', 'local');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (5, '2022-04-04 10:24:12.142570', '2022-04-04 10:24:12.142585', 'auto_unlock_seconds', 1, '600', '600', '[]', 1, 'password', 'default', 'local');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (6, '2022-04-04 10:24:12.142875', '2022-04-04 10:24:12.142890', 'init_password_method', 1, '""', '"fixed_preset"', '["fixed_preset","random_via_mail"]', 1, 'password', 'default', 'local');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (7, '2022-04-04 10:24:12.143192', '2022-04-04 10:24:12.143208', 'init_password', 1, '"bk@Ctb3mR7GHNAvUVQW"', '"bk@Ctb3mR7GHNAvUVQW"', '[]', 1, 'password', 'default', 'local');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (8, '2022-04-04 10:24:12.143499', '2022-04-04 10:24:12.143514', 'init_mail_config', 1, '""', '{"title":"\\u84dd\\u9cb8\\u667a\\u4e91\\u793e\\u533a\\u7248 - \\u60a8\\u7684\\u5e10\\u6237\\u5df2\\u7ecf\\u6210\\u529f\\u521b\\u5efa\\uff01","sender":"\\u84dd\\u9cb8\\u667a\\u4e91\\u793e\\u533a\\u7248","content":"\\u60a8\\u597d\\uff01\\u60a8\\u7684\\u84dd\\u9cb8\\u667a\\u4e91\\u793e\\u533a\\u7248\\u5e10\\u6237\\u5df2\\u7ecf\\u6210\\u529f\\u521b\\u5efa\\uff0c\\u4ee5\\u4e0b\\u662f\\u60a8\\u7684\\u5e10\\u6237\\u4fe1\\u606f:\\u767b\\u5f55\\u5e10\\u6237\\uff1a{username}\\uff0c \\u521d\\u59cb\\u767b\\u5f55\\u5bc6\\u7801\\uff1a{password} \\u4e3a\\u4e86\\u4fdd\\u969c\\u5e10\\u6237\\u5b89\\u5168\\uff0c\\u6211\\u4eec\\u5efa\\u8bae\\u60a8\\u5c3d\\u5feb\\u767b\\u5f55\\u84dd\\u9cb8\\u667a\\u4e91\\u793e\\u533a\\u7248\\u4fee\\u6539\\u5bc6\\u7801\\uff1a{url} \\u6b64\\u90ae\\u4ef6\\u4e3a\\u7cfb\\u7edf\\u81ea\\u52a8\\u53d1\\u9001\\uff0c\\u8bf7\\u52ff\\u56de\\u590d\\u3002\\u84dd\\u9cb8\\u667a\\u4e91\\u5b98\\u7f51\\uff1a http://bk.tencent.com"}', '[]', 1, 'password', 'default', 'local');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (9, '2022-04-04 10:24:12.143867', '2022-04-04 10:24:12.143882', 'reset_mail_config', 1, '""', '{"title":"\\u84dd\\u9cb8\\u667a\\u4e91\\u793e\\u533a\\u7248 - \\u767b\\u5f55\\u5bc6\\u7801\\u91cd\\u7f6e","sender":"\\u84dd\\u9cb8\\u667a\\u4e91\\u793e\\u533a\\u7248","content":"\\u60a8\\u597d\\uff01\\u6211\\u4eec\\u6536\\u5230\\u4e86\\u4f60\\u91cd\\u7f6e\\u5bc6\\u7801\\u7684\\u7533\\u8bf7\\uff0c\\u8bf7\\u70b9\\u51fb\\u4e0b\\u65b9\\u94fe\\u63a5\\u8fdb\\u884c\\u5bc6\\u7801\\u91cd\\u7f6e\\uff1a{url} \\u8be5\\u94fe\\u63a5\\u6709\\u6548\\u65f6\\u95f4\\u4e3a3\\u5c0f\\u65f6\\uff0c\\u8fc7\\u671f\\u540e\\u8bf7\\u91cd\\u65b0\\u70b9\\u51fb\\u5bc6\\u7801\\u91cd\\u7f6e\\u94fe\\u63a5\\uff1a{reset_url} \\u6b64\\u90ae\\u4ef6\\u4e3a\\u7cfb\\u7edf\\u81ea\\u52a8\\u53d1\\u9001\\uff0c\\u8bf7\\u52ff\\u56de\\u590d"}', '[]', 1, 'password', 'default', 'local');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (10, '2022-04-04 10:24:12.144229', '2022-04-04 10:24:12.144244', 'force_reset_first_login', 1, 'true', 'true', '[]', 1, 'password', 'default', 'local');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (11, '2022-04-04 10:24:12.144533', '2022-04-04 10:24:12.144549', 'enable_auto_freeze', 1, 'true', 'true', '[]', 1, 'password', 'default', 'local');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (12, '2022-04-04 10:24:12.144835', '2022-04-04 10:24:12.144850', 'freeze_after_days', 1, '180', '180', '[]', 1, 'password', 'default', 'local');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (13, '2022-04-04 10:24:12.145148', '2022-04-04 10:24:12.145163', 'connection_url', 1, '"ldap://localhost:389"', '"ldap://localhost:389"', '[]', 1, 'connection', 'default', 'mad');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (14, '2022-04-04 10:24:12.145448', '2022-04-04 10:24:12.145464', 'ssl_encryption', 1, '""', '"\\u65e0"', '["\\u65e0","SSL"]', 1, 'connection', 'default', 'mad');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (15, '2022-04-04 10:24:12.145754', '2022-04-04 10:24:12.145769', 'timeout_setting', 1, '120', '120', '[]', 1, 'connection', 'default', 'mad');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (16, '2022-04-04 10:24:12.146054', '2022-04-04 10:24:12.146070', 'pull_cycle', 1, '60', '60', '[]', 1, 'connection', 'default', 'mad');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (17, '2022-04-04 10:24:12.146364', '2022-04-04 10:24:12.146379', 'base_dn', 1, '"CN"', '""', '[]', 1, 'connection', 'default', 'mad');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (18, '2022-04-04 10:24:12.146666', '2022-04-04 10:24:12.146681', 'user', 1, '"user"', '""', '[]', 1, 'connection', 'default', 'mad');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (19, '2022-04-04 10:24:12.146966', '2022-04-04 10:24:12.146981', 'password', 1, '"password"', '""', '[]', 1, 'connection', 'default', 'mad');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (20, '2022-04-04 10:24:12.147282', '2022-04-04 10:24:12.147298', 'basic_pull_node', 1, '""', '""', '[]', 1, 'fields', 'basic', 'mad');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (21, '2022-04-04 10:24:12.147583', '2022-04-04 10:24:12.147598', 'user_class', 1, '"user"', '"user"', '[]', 1, 'fields', 'basic', 'mad');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (22, '2022-04-04 10:24:12.147881', '2022-04-04 10:24:12.147896', 'user_filter', 1, '"(&(objectCategory=Person)(sAMAccountName=*))"', '"(&(objectCategory=Person)(sAMAccountName=*))"', '[]', 1, 'fields', 'basic', 'mad');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (23, '2022-04-04 10:24:12.148189', '2022-04-04 10:24:12.148204', 'organization_class', 1, '"organizationalUnit"', '"organizationalUnit"', '[]', 1, 'fields', 'basic', 'mad');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (24, '2022-04-04 10:24:12.148490', '2022-04-04 10:24:12.148505', 'username', 1, '""', '"sAMAccountName"', '[]', 1, 'fields', 'basic', 'mad');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (25, '2022-04-04 10:24:12.148789', '2022-04-04 10:24:12.148804', 'display_name', 1, '"displayName"', '"displayName"', '[]', 1, 'fields', 'basic', 'mad');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (26, '2022-04-04 10:24:12.149089', '2022-04-04 10:24:12.149104', 'email', 1, '"email"', '"email"', '[]', 1, 'fields', 'basic', 'mad');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (27, '2022-04-04 10:24:12.149395', '2022-04-04 10:24:12.149410', 'telephone', 1, '"Telephone"', '"Telephone"', '[]', 1, 'fields', 'basic', 'mad');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (28, '2022-04-04 10:24:12.149695', '2022-04-04 10:24:12.149710', 'bk_fields', 1, '""', '""', '["\\u804c\\u52a1","\\u6027\\u522b","\\u5e74\\u9f84","\\u5de5\\u4f5c\\u5e74\\u9650","\\u5a5a\\u59fb\\u72b6\\u6001","\\u7c4d\\u8d2f"]', 1, 'fields', 'extend', 'mad');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (29, '2022-04-04 10:24:12.150006', '2022-04-04 10:24:12.150021', 'mad_fields', 1, '""', '""', '["job","gender","age","year","marry","home"]', 1, 'fields', 'extend', 'mad');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (30, '2022-04-04 10:24:12.150323', '2022-04-04 10:24:12.150338', 'user_group_class', 1, '"groupOfUniqueNames"', '"groupOfUniqueNames"', '[]', 1, 'fields', 'group', 'mad');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (31, '2022-04-04 10:24:12.150623', '2022-04-04 10:24:12.150638', 'user_group_filter', 1, '"(objectclass=groupOfUniqueNames)"', '"(objectclass=groupOfUniqueNames)"', '[]', 1, 'fields', 'group', 'mad');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (32, '2022-04-04 10:24:12.150923', '2022-04-04 10:24:12.150938', 'user_group_name', 1, '"cn"', '"cn"', '[]', 1, 'fields', 'group', 'mad');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (33, '2022-04-04 10:24:12.151227', '2022-04-04 10:24:12.151242', 'user_group_description', 1, '"description"', '"description"', '[]', 1, 'fields', 'group', 'mad');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (34, '2022-04-04 10:24:12.208989', '2022-04-04 10:24:12.209026', 'connection_url', 1, '"ldap://localhost:389"', '""', '[]', 1, 'connection', 'default', 'ldap');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (35, '2022-04-04 10:24:12.209617', '2022-04-04 10:24:12.209634', 'ssl_encryption', 1, '""', '"\\u65e0"', '["\\u65e0","SSL"]', 1, 'connection', 'default', 'ldap');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (36, '2022-04-04 10:24:12.209935', '2022-04-04 10:24:12.209951', 'timeout_setting', 1, '120', '120', '[]', 1, 'connection', 'default', 'ldap');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (37, '2022-04-04 10:24:12.210255', '2022-04-04 10:24:12.210271', 'pull_cycle', 1, '60', '60', '[]', 1, 'connection', 'default', 'ldap');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (38, '2022-04-04 10:24:12.210561', '2022-04-04 10:24:12.210576', 'base_dn', 1, '"CN"', '""', '[]', 1, 'connection', 'default', 'ldap');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (39, '2022-04-04 10:24:12.210866', '2022-04-04 10:24:12.210881', 'user', 1, '"username"', '""', '[]', 1, 'connection', 'default', 'ldap');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (40, '2022-04-04 10:24:12.211177', '2022-04-04 10:24:12.211192', 'password', 1, '"password"', '""', '[]', 1, 'connection', 'default', 'ldap');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (41, '2022-04-04 10:24:12.211479', '2022-04-04 10:24:12.211495', 'basic_pull_node', 1, '""', '""', '[]', 1, 'fields', 'basic', 'ldap');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (42, '2022-04-04 10:24:12.211779', '2022-04-04 10:24:12.211794', 'user_class', 1, '"inetorgperson"', '"inetorgperson"', '[]', 1, 'fields', 'basic', 'ldap');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (43, '2022-04-04 10:24:12.212078', '2022-04-04 10:24:12.212094', 'user_filter', 1, '"(objectclass=inetorgperson)"', '"(objectclass=inetorgperson)"', '[]', 1, 'fields', 'basic', 'ldap');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (44, '2022-04-04 10:24:12.212387', '2022-04-04 10:24:12.212402', 'organization_class', 1, '"organizationalUnit"', '"organizationalUnit"', '[]', 1, 'fields', 'basic', 'ldap');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (45, '2022-04-04 10:24:12.212687', '2022-04-04 10:24:12.212703', 'username', 1, '""', '"cn"', '[]', 1, 'fields', 'basic', 'ldap');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (46, '2022-04-04 10:24:12.212985', '2022-04-04 10:24:12.213000', 'display_name', 1, '"displayName"', '"displayName"', '[]', 1, 'fields', 'basic', 'ldap');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (47, '2022-04-04 10:24:12.213292', '2022-04-04 10:24:12.213307', 'email', 1, '"email"', '"email"', '[]', 1, 'fields', 'basic', 'ldap');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (48, '2022-04-04 10:24:12.213588', '2022-04-04 10:24:12.213604', 'telephone', 1, '"telephonenumber"', '"telephonenumber"', '[]', 1, 'fields', 'basic', 'ldap');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (49, '2022-04-04 10:24:12.213885', '2022-04-04 10:24:12.213901', 'bk_fields', 1, '""', '""', '["\\u804c\\u52a1","\\u6027\\u522b","\\u5e74\\u9f84","\\u5de5\\u4f5c\\u5e74\\u9650","\\u5a5a\\u59fb\\u72b6\\u6001","\\u7c4d\\u8d2f"]', 1, 'fields', 'extend', 'ldap');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (50, '2022-04-04 10:24:12.214202', '2022-04-04 10:24:12.214218', 'mad_fields', 1, '""', '""', '["job","gender","age","year","marry","home"]', 1, 'fields', 'extend', 'ldap');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (51, '2022-04-04 10:24:12.214507', '2022-04-04 10:24:12.214522', 'user_group_class', 1, '"groupOfUniqueNames"', '"groupOfUniqueNames"', '[]', 1, 'fields', 'group', 'ldap');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (52, '2022-04-04 10:24:12.214805', '2022-04-04 10:24:12.214820', 'user_group_filter', 1, '"(objectclass=groupOfUniqueNames)"', '"(objectclass=groupOfUniqueNames)"', '[]', 1, 'fields', 'group', 'ldap');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (53, '2022-04-04 10:24:12.215104', '2022-04-04 10:24:12.215126', 'user_group_name', 1, '"cn"', '"cn"', '[]', 1, 'fields', 'group', 'ldap');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (54, '2022-04-04 10:24:12.215407', '2022-04-04 10:24:12.215423', 'user_group_description', 1, '"description"', '"description"', '[]', 1, 'fields', 'group', 'ldap');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (55, '2022-04-04 10:24:12.258562', '2022-04-04 10:24:12.258582', 'root_company_id', 1, '""', '0', '[]', 1, 'general', 'default', 'tof');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (56, '2022-04-04 10:24:12.258956', '2022-04-04 10:24:12.258972', 'max_depth', 1, '""', '8', '[]', 1, 'general', 'default', 'tof');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (57, '2022-04-04 10:24:12.259275', '2022-04-04 10:24:12.259291', 'leader_keyword', 1, '""', '"TeamLeader"', '[]', 1, 'general', 'default', 'tof');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (58, '2022-04-04 10:24:12.259583', '2022-04-04 10:24:12.259598', 'normal_status_keyword', 1, '""', '"\\u5728\\u804c"', '[]', 1, 'general', 'default', 'tof');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (59, '2022-04-04 10:24:12.259887', '2022-04-04 10:24:12.259902', 'common_email_suffix', 1, '""', '"@tencent.com"', '[]', 1, 'general', 'default', 'tof');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (60, '2022-04-04 10:24:12.260200', '2022-04-04 10:24:12.260216', 'exempt_sync_department_ids', 1, '""', '[]', '[]', 1, 'general', 'default', 'tof');
INSERT INTO bk_user.user_settings_settingmeta (id, create_time, update_time, `key`, enabled, example, `default`, choices, required, namespace, region, category_type) VALUES (61, '2022-04-04 10:24:12.260503', '2022-04-04 10:24:12.260518', 'pull_interval', 1, '""', '86400', '[]', 1, 'general', 'default', 'tof');