create table wiki_images_image
(
    revisionplugin_ptr_id int not null
        primary key,
    constraint wiki_images_image_revisionplugin_ptr_i_d230f69d_fk_wiki_revi
        foreign key (revisionplugin_ptr_id) references wiki_revisionplugin (articleplugin_ptr_id)
);

