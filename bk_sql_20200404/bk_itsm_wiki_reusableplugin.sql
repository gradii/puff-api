create table wiki_reusableplugin
(
    articleplugin_ptr_id int not null
        primary key,
    constraint wiki_reusableplugin_articleplugin_ptr_id_c1737239_fk_wiki_arti
        foreign key (articleplugin_ptr_id) references wiki_articleplugin (id)
);

