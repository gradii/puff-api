create table wiki_articleplugin
(
    id         int auto_increment
        primary key,
    deleted    tinyint(1)  not null,
    created    datetime(6) not null,
    article_id int         not null,
    constraint wiki_articleplugin_article_id_9ab0e854_fk_wiki_article_id
        foreign key (article_id) references wiki_article (id)
);

