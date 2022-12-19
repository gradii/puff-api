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

INSERT INTO bk_user_manage.auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add permission', 1, 'add_permission');
INSERT INTO bk_user_manage.auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change permission', 1, 'change_permission');
INSERT INTO bk_user_manage.auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete permission', 1, 'delete_permission');
INSERT INTO bk_user_manage.auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can add group', 2, 'add_group');
INSERT INTO bk_user_manage.auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can change group', 2, 'change_group');
INSERT INTO bk_user_manage.auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can delete group', 2, 'delete_group');
INSERT INTO bk_user_manage.auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can add content type', 3, 'add_contenttype');
INSERT INTO bk_user_manage.auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can change content type', 3, 'change_contenttype');
INSERT INTO bk_user_manage.auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can delete content type', 3, 'delete_contenttype');
INSERT INTO bk_user_manage.auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can add session', 4, 'add_session');
INSERT INTO bk_user_manage.auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can change session', 4, 'change_session');
INSERT INTO bk_user_manage.auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can delete session', 4, 'delete_session');
INSERT INTO bk_user_manage.auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add user', 5, 'add_bkuser');
INSERT INTO bk_user_manage.auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change user', 5, 'change_bkuser');
INSERT INTO bk_user_manage.auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete user', 5, 'delete_bkuser');
