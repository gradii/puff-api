create table django_celery_beat_periodictasks
(
    ident       smallint    not null
        primary key,
    last_update datetime(6) not null
);

INSERT INTO bk_user.django_celery_beat_periodictasks (ident, last_update) VALUES (1, '2022-04-04 10:24:15.148937');
