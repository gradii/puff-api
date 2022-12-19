create table wiki_revisionplugin
(
    articleplugin_ptr_id int not null
        primary key,
    current_revision_id  int null,
    constraint current_revision_id
        unique (current_revision_id),
    constraint wiki_revisionplugin_articleplugin_ptr_id_95c295f2_fk_wiki_arti
        foreign key (articleplugin_ptr_id) references wiki_articleplugin (id),
    constraint wiki_revisionplugin_current_revision_id_46514536_fk_wiki_revi
        foreign key (current_revision_id) references wiki_revisionpluginrevision (id)
);

