create table django_migrations
(
    id      int auto_increment
        primary key,
    app     varchar(255) not null,
    name    varchar(255) not null,
    applied datetime(6)  not null
);

INSERT INTO bk_user_manage.django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2022-04-04 18:28:11.801587');
INSERT INTO bk_user_manage.django_migrations (id, app, name, applied) VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2022-04-04 18:28:11.811486');
INSERT INTO bk_user_manage.django_migrations (id, app, name, applied) VALUES (3, 'auth', '0001_initial', '2022-04-04 18:28:11.864784');
INSERT INTO bk_user_manage.django_migrations (id, app, name, applied) VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2022-04-04 18:28:11.870557');
INSERT INTO bk_user_manage.django_migrations (id, app, name, applied) VALUES (5, 'auth', '0003_alter_user_email_max_length', '2022-04-04 18:28:11.874310');
INSERT INTO bk_user_manage.django_migrations (id, app, name, applied) VALUES (6, 'auth', '0004_alter_user_username_opts', '2022-04-04 18:28:11.877787');
INSERT INTO bk_user_manage.django_migrations (id, app, name, applied) VALUES (7, 'auth', '0005_alter_user_last_login_null', '2022-04-04 18:28:11.881141');
INSERT INTO bk_user_manage.django_migrations (id, app, name, applied) VALUES (8, 'auth', '0006_require_contenttypes_0002', '2022-04-04 18:28:11.882245');
INSERT INTO bk_user_manage.django_migrations (id, app, name, applied) VALUES (9, 'account', '0001_initial', '2022-04-04 18:28:11.908875');
INSERT INTO bk_user_manage.django_migrations (id, app, name, applied) VALUES (10, 'account', '0002_initial_user_data', '2022-04-04 18:28:11.914503');
INSERT INTO bk_user_manage.django_migrations (id, app, name, applied) VALUES (11, 'account', '0003_auto_20181218_1556', '2022-04-04 18:28:11.920974');
INSERT INTO bk_user_manage.django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2022-04-04 18:28:11.925935');
INSERT INTO bk_user_manage.django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2022-04-04 18:28:11.930921');
INSERT INTO bk_user_manage.django_migrations (id, app, name, applied) VALUES (14, 'sessions', '0001_initial', '2022-04-04 18:28:11.936176');
