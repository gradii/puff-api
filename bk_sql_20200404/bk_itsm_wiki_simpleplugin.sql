create table wiki_simpleplugin
(
    articleplugin_ptr_id int not null
        primary key,
    article_revision_id  int not null,
    constraint wiki_simpleplugin_article_revision_id_cff7df92_fk_wiki_arti
        foreign key (article_revision_id) references wiki_articlerevision (id),
    constraint wiki_simpleplugin_articleplugin_ptr_id_2b99b828_fk_wiki_arti
        foreign key (articleplugin_ptr_id) references wiki_articleplugin (id)
);

