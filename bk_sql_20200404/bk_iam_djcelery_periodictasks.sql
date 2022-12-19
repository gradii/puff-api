create table djcelery_periodictasks
(
    ident       smallint    not null
        primary key,
    last_update datetime(6) not null
);

INSERT INTO bk_iam.djcelery_periodictasks (ident, last_update) VALUES (1, '2022-04-04 10:27:38.328321');
