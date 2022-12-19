create table profiles_dynamicfieldinfo
(
    id                   int auto_increment
        primary key,
    create_time          datetime(6) not null,
    update_time          datetime(6) not null,
    name                 varchar(32) not null,
    display_name         varchar(64) not null,
    type                 varchar(32) not null,
    `require`            tinyint(1)  not null,
    `unique`             tinyint(1)  not null,
    editable             tinyint(1)  not null,
    builtin              tinyint(1)  not null,
    `order`              int         not null,
    `default`            longtext    not null,
    enabled              tinyint(1)  not null,
    options              longtext    not null,
    visible              tinyint(1)  not null,
    configurable         tinyint(1)  not null,
    map_method           varchar(64) not null,
    display_name_en      varchar(64) null,
    display_name_zh_hans varchar(64) null,
    constraint name
        unique (name),
    constraint profiles_dynamicfieldinfo_display_name_en_046a1889_uniq
        unique (display_name_en),
    constraint profiles_dynamicfieldinfo_display_name_fb5cc255_uniq
        unique (display_name),
    constraint profiles_dynamicfieldinfo_display_name_zh_hans_548f0609_uniq
        unique (display_name_zh_hans)
);

INSERT INTO bk_user.profiles_dynamicfieldinfo (id, create_time, update_time, name, display_name, type, `require`, `unique`, editable, builtin, `order`, `default`, enabled, options, visible, configurable, map_method, display_name_en, display_name_zh_hans) VALUES (1, '2022-04-04 10:24:11.695199', '2022-04-04 11:55:14.863085', 'username', '用户名', 'string', 1, 1, 0, 1, 1, '""', 1, '{}', 1, 0, 'direct', 'Username', '用户名');
INSERT INTO bk_user.profiles_dynamicfieldinfo (id, create_time, update_time, name, display_name, type, `require`, `unique`, editable, builtin, `order`, `default`, enabled, options, visible, configurable, map_method, display_name_en, display_name_zh_hans) VALUES (2, '2022-04-04 10:24:11.695717', '2022-04-04 11:55:21.169164', 'display_name', '全名', 'string', 1, 0, 1, 1, 2, '""', 1, '{}', 1, 1, 'direct', 'DisplayName', '全名');
INSERT INTO bk_user.profiles_dynamicfieldinfo (id, create_time, update_time, name, display_name, type, `require`, `unique`, editable, builtin, `order`, `default`, enabled, options, visible, configurable, map_method, display_name_en, display_name_zh_hans) VALUES (3, '2022-04-04 10:24:11.696385', '2022-04-04 11:55:21.170640', 'email', '邮箱', 'string', 1, 0, 1, 1, 3, '""', 1, '{}', 1, 0, 'direct', 'Email', '邮箱');
INSERT INTO bk_user.profiles_dynamicfieldinfo (id, create_time, update_time, name, display_name, type, `require`, `unique`, editable, builtin, `order`, `default`, enabled, options, visible, configurable, map_method, display_name_en, display_name_zh_hans) VALUES (4, '2022-04-04 10:24:11.696799', '2022-04-04 10:24:11.696816', 'telephone', '手机号', 'number', 1, 0, 1, 1, 4, '""', 1, '{}', 1, 0, 'direct', 'Telephone', '手机号');
INSERT INTO bk_user.profiles_dynamicfieldinfo (id, create_time, update_time, name, display_name, type, `require`, `unique`, editable, builtin, `order`, `default`, enabled, options, visible, configurable, map_method, display_name_en, display_name_zh_hans) VALUES (5, '2022-04-04 10:24:11.697248', '2022-04-04 10:24:11.697264', 'status', '账户状态', 'one_enum', 1, 0, 0, 1, 5, '"NORMAL"', 1, '[["NORMAL","\\u6b63\\u5e38"],["LOCKED","\\u88ab\\u51bb\\u7ed3"],["DELETED","\\u88ab\\u5220\\u9664"],["DISABLED","\\u88ab\\u7981\\u7528"]]', 1, 0, 'direct', 'AccountStatus', '账户状态');
INSERT INTO bk_user.profiles_dynamicfieldinfo (id, create_time, update_time, name, display_name, type, `require`, `unique`, editable, builtin, `order`, `default`, enabled, options, visible, configurable, map_method, display_name_en, display_name_zh_hans) VALUES (6, '2022-04-04 10:24:11.697607', '2022-04-04 10:24:11.697623', 'staff_status', '在职状态', 'one_enum', 1, 0, 1, 1, 6, '"IN"', 1, '[["IN","\\u5728\\u804c"],["OUT","\\u79bb\\u804c"]]', 1, 0, 'direct', 'StaffStatus', '在职状态');
INSERT INTO bk_user.profiles_dynamicfieldinfo (id, create_time, update_time, name, display_name, type, `require`, `unique`, editable, builtin, `order`, `default`, enabled, options, visible, configurable, map_method, display_name_en, display_name_zh_hans) VALUES (7, '2022-04-04 10:24:11.697945', '2022-04-04 10:24:11.931136', 'department_name', '组织', 'string', 0, 0, 0, 1, 7, '""', 1, '{}', 1, 0, 'custom', 'Departments', '组织');
INSERT INTO bk_user.profiles_dynamicfieldinfo (id, create_time, update_time, name, display_name, type, `require`, `unique`, editable, builtin, `order`, `default`, enabled, options, visible, configurable, map_method, display_name_en, display_name_zh_hans) VALUES (8, '2022-04-04 10:24:11.698289', '2022-04-04 10:24:11.932565', 'leader', '上级', 'string', 0, 0, 0, 1, 8, '""', 1, '{}', 1, 1, 'custom', 'Leaders', '上级');
INSERT INTO bk_user.profiles_dynamicfieldinfo (id, create_time, update_time, name, display_name, type, `require`, `unique`, editable, builtin, `order`, `default`, enabled, options, visible, configurable, map_method, display_name_en, display_name_zh_hans) VALUES (9, '2022-04-04 10:24:11.698618', '2022-04-04 10:24:11.698634', 'position', '职务', 'one_enum', 0, 0, 1, 1, 9, '0', 1, '[[0,"\\u5458\\u5de5"],[1,"\\u7ec4\\u957f"]]', 1, 1, 'direct', 'Position', '职务');
INSERT INTO bk_user.profiles_dynamicfieldinfo (id, create_time, update_time, name, display_name, type, `require`, `unique`, editable, builtin, `order`, `default`, enabled, options, visible, configurable, map_method, display_name_en, display_name_zh_hans) VALUES (10, '2022-04-04 10:24:11.698972', '2022-04-04 10:24:11.698989', 'wx_userid', '微信', 'string', 0, 0, 1, 1, 10, '""', 1, '{}', 1, 0, 'direct', 'Wechat', '微信');
INSERT INTO bk_user.profiles_dynamicfieldinfo (id, create_time, update_time, name, display_name, type, `require`, `unique`, editable, builtin, `order`, `default`, enabled, options, visible, configurable, map_method, display_name_en, display_name_zh_hans) VALUES (11, '2022-04-04 10:24:11.699310', '2022-04-04 10:24:11.699332', 'qq', 'QQ', 'string', 0, 0, 1, 1, 11, '""', 1, '{}', 1, 1, 'direct', 'QQ', 'QQ');
