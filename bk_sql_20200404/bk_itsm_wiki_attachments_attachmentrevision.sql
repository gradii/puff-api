create table wiki_attachments_attachmentrevision
(
    id                   int auto_increment
        primary key,
    revision_number      int          not null,
    user_message         longtext     not null,
    automatic_log        longtext     not null,
    ip_address           char(39)     null,
    modified             datetime(6)  not null,
    created              datetime(6)  not null,
    deleted              tinyint(1)   not null,
    locked               tinyint(1)   not null,
    file                 varchar(255) not null,
    description          longtext     not null,
    attachment_id        int          not null,
    previous_revision_id int          null,
    user_id              int          null,
    constraint wiki_attachments_att_attachment_id_32ffc4ea_fk_wiki_atta
        foreign key (attachment_id) references wiki_attachments_attachment (reusableplugin_ptr_id),
    constraint wiki_attachments_att_previous_revision_id_e7f09093_fk_wiki_atta
        foreign key (previous_revision_id) references wiki_attachments_attachmentrevision (id),
    constraint wiki_attachments_att_user_id_2da908ac_fk_account_u
        foreign key (user_id) references account_user (id)
);

