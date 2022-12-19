create table django_content_type
(
    id        int auto_increment
        primary key,
    app_label varchar(100) not null,
    model     varchar(100) not null,
    constraint django_content_type_app_label_model_76bd3d3b_uniq
        unique (app_label, model)
);

INSERT INTO bk_user.django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO bk_user.django_content_type (id, app_label, model) VALUES (20, 'audit', 'apirequest');
INSERT INTO bk_user.django_content_type (id, app_label, model) VALUES (21, 'audit', 'generallog');
INSERT INTO bk_user.django_content_type (id, app_label, model) VALUES (22, 'audit', 'login');
INSERT INTO bk_user.django_content_type (id, app_label, model) VALUES (23, 'audit', 'resetpassword');
INSERT INTO bk_user.django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO bk_user.django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO bk_user.django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO bk_user.django_content_type (id, app_label, model) VALUES (24, 'categories', 'profilecategory');
INSERT INTO bk_user.django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO bk_user.django_content_type (id, app_label, model) VALUES (17, 'departments', 'department');
INSERT INTO bk_user.django_content_type (id, app_label, model) VALUES (13, 'django_celery_beat', 'clockedschedule');
INSERT INTO bk_user.django_content_type (id, app_label, model) VALUES (8, 'django_celery_beat', 'crontabschedule');
INSERT INTO bk_user.django_content_type (id, app_label, model) VALUES (9, 'django_celery_beat', 'intervalschedule');
INSERT INTO bk_user.django_content_type (id, app_label, model) VALUES (10, 'django_celery_beat', 'periodictask');
INSERT INTO bk_user.django_content_type (id, app_label, model) VALUES (11, 'django_celery_beat', 'periodictasks');
INSERT INTO bk_user.django_content_type (id, app_label, model) VALUES (12, 'django_celery_beat', 'solarschedule');
INSERT INTO bk_user.django_content_type (id, app_label, model) VALUES (14, 'profiles', 'dynamicfieldinfo');
INSERT INTO bk_user.django_content_type (id, app_label, model) VALUES (15, 'profiles', 'profile');
INSERT INTO bk_user.django_content_type (id, app_label, model) VALUES (16, 'profiles', 'profiletokenholder');
INSERT INTO bk_user.django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO bk_user.django_content_type (id, app_label, model) VALUES (7, 'sites', 'site');
INSERT INTO bk_user.django_content_type (id, app_label, model) VALUES (18, 'user_settings', 'setting');
INSERT INTO bk_user.django_content_type (id, app_label, model) VALUES (19, 'user_settings', 'settingmeta');
