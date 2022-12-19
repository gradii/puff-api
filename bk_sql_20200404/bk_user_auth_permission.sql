create table auth_permission
(
    id              int auto_increment
        primary key,
    name            varchar(255) not null,
    content_type_id int          not null,
    codename        varchar(100) not null,
    constraint auth_permission_content_type_id_codename_01ab375a_uniq
        unique (content_type_id, codename),
    constraint auth_permission_content_type_id_2f476e4b_fk_django_co
        foreign key (content_type_id) references django_content_type (id)
);

INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can add user', 4, 'add_user');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can change user', 4, 'change_user');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can delete user', 4, 'delete_user');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add content type', 5, 'add_contenttype');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change content type', 5, 'change_contenttype');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can add session', 6, 'add_session');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can change session', 6, 'change_session');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can delete session', 6, 'delete_session');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can add site', 7, 'add_site');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can change site', 7, 'change_site');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can delete site', 7, 'delete_site');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can add crontab', 8, 'add_crontabschedule');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can change crontab', 8, 'change_crontabschedule');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can delete crontab', 8, 'delete_crontabschedule');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add interval', 9, 'add_intervalschedule');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change interval', 9, 'change_intervalschedule');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete interval', 9, 'delete_intervalschedule');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can add periodic task', 10, 'add_periodictask');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (29, 'Can change periodic task', 10, 'change_periodictask');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (30, 'Can delete periodic task', 10, 'delete_periodictask');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (31, 'Can add periodic tasks', 11, 'add_periodictasks');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (32, 'Can change periodic tasks', 11, 'change_periodictasks');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (33, 'Can delete periodic tasks', 11, 'delete_periodictasks');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (34, 'Can add solar event', 12, 'add_solarschedule');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (35, 'Can change solar event', 12, 'change_solarschedule');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (36, 'Can delete solar event', 12, 'delete_solarschedule');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (37, 'Can add clocked', 13, 'add_clockedschedule');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (38, 'Can change clocked', 13, 'change_clockedschedule');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (39, 'Can delete clocked', 13, 'delete_clockedschedule');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (40, 'Can add dynamic field info', 14, 'add_dynamicfieldinfo');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (41, 'Can change dynamic field info', 14, 'change_dynamicfieldinfo');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (42, 'Can delete dynamic field info', 14, 'delete_dynamicfieldinfo');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (43, 'Can add 用户信息', 15, 'add_profile');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (44, 'Can change 用户信息', 15, 'change_profile');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (45, 'Can delete 用户信息', 15, 'delete_profile');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (46, 'Can add profile token holder', 16, 'add_profiletokenholder');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (47, 'Can change profile token holder', 16, 'change_profiletokenholder');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (48, 'Can delete profile token holder', 16, 'delete_profiletokenholder');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (49, 'Can add 组织表', 17, 'add_department');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (50, 'Can change 组织表', 17, 'change_department');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (51, 'Can delete 组织表', 17, 'delete_department');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (52, 'Can add 配置表', 18, 'add_setting');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (53, 'Can change 配置表', 18, 'change_setting');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (54, 'Can delete 配置表', 18, 'delete_setting');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (55, 'Can add 配置元信息表', 19, 'add_settingmeta');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (56, 'Can change 配置元信息表', 19, 'change_settingmeta');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (57, 'Can delete 配置元信息表', 19, 'delete_settingmeta');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (58, 'Can add api request', 20, 'add_apirequest');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (59, 'Can change api request', 20, 'change_apirequest');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (60, 'Can delete api request', 20, 'delete_apirequest');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (61, 'Can add general log', 21, 'add_generallog');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (62, 'Can change general log', 21, 'change_generallog');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (63, 'Can delete general log', 21, 'delete_generallog');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (64, 'Can add log in', 22, 'add_login');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (65, 'Can change log in', 22, 'change_login');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (66, 'Can delete log in', 22, 'delete_login');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (67, 'Can add reset password', 23, 'add_resetpassword');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (68, 'Can change reset password', 23, 'change_resetpassword');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (69, 'Can delete reset password', 23, 'delete_resetpassword');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (70, 'Can add profile category', 24, 'add_profilecategory');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (71, 'Can change profile category', 24, 'change_profilecategory');
INSERT INTO bk_user.auth_permission (id, name, content_type_id, codename) VALUES (72, 'Can delete profile category', 24, 'delete_profilecategory');
