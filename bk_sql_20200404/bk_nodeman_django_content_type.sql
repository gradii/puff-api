create table django_content_type
(
    id        int auto_increment
        primary key,
    app_label varchar(100) not null,
    model     varchar(100) not null,
    constraint django_content_type_app_label_model_76bd3d3b_uniq
        unique (app_label, model)
);

INSERT INTO bk_nodeman.django_content_type (id, app_label, model) VALUES (1, 'account', 'user');
INSERT INTO bk_nodeman.django_content_type (id, app_label, model) VALUES (2, 'account', 'userproxy');
