create table django_content_type
(
    id        int auto_increment
        primary key,
    app_label varchar(100) not null,
    model     varchar(100) not null,
    constraint django_content_type_app_label_model_76bd3d3b_uniq
        unique (app_label, model)
);

INSERT INTO bk_user_manage.django_content_type (id, app_label, model) VALUES (5, 'account', 'bkuser');
INSERT INTO bk_user_manage.django_content_type (id, app_label, model) VALUES (2, 'auth', 'group');
INSERT INTO bk_user_manage.django_content_type (id, app_label, model) VALUES (1, 'auth', 'permission');
INSERT INTO bk_user_manage.django_content_type (id, app_label, model) VALUES (3, 'contenttypes', 'contenttype');
INSERT INTO bk_user_manage.django_content_type (id, app_label, model) VALUES (4, 'sessions', 'session');
