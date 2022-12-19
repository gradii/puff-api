create table wiki_images_imagerevision
(
    revisionpluginrevision_ptr_id int           not null
        primary key,
    image                         varchar(2000) null,
    width                         smallint      null,
    height                        smallint      null,
    constraint wiki_images_imagerev_revisionpluginrevisi_ecb726e8_fk_wiki_revi
        foreign key (revisionpluginrevision_ptr_id) references wiki_revisionpluginrevision (id)
);

