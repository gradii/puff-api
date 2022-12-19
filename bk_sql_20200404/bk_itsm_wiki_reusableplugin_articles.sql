create table wiki_reusableplugin_articles
(
    id                int auto_increment
        primary key,
    reusableplugin_id int not null,
    article_id        int not null,
    constraint wiki_reusableplugin_arti_reusableplugin_id_articl_302a7a01_uniq
        unique (reusableplugin_id, article_id),
    constraint wiki_reusableplugin__article_id_8a09d39e_fk_wiki_arti
        foreign key (article_id) references wiki_article (id),
    constraint wiki_reusableplugin__reusableplugin_id_52618a1c_fk_wiki_reus
        foreign key (reusableplugin_id) references wiki_reusableplugin (articleplugin_ptr_id)
);

