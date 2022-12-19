create table periodic_task_djceleryperiodictasks
(
    ident       smallint    not null
        primary key,
    last_update datetime(6) not null
);

INSERT INTO bk_itsm.periodic_task_djceleryperiodictasks (ident, last_update) VALUES (1, '2022-04-04 18:29:42.271516');
