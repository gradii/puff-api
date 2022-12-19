create table wiki_attachments_attachment
(
    reusableplugin_ptr_id int          not null
        primary key,
    original_filename     varchar(256) null,
    current_revision_id   int          null,
    constraint current_revision_id
        unique (current_revision_id),
    constraint wiki_attachments_att_current_revision_id_d30f6b77_fk_wiki_atta
        foreign key (current_revision_id) references wiki_attachments_attachmentrevision (id),
    constraint wiki_attachments_att_reusableplugin_ptr_i_856ba17c_fk_wiki_reus
        foreign key (reusableplugin_ptr_id) references wiki_reusableplugin (articleplugin_ptr_id)
);

