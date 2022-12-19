create table wiki_revisionpluginrevision
(
    id                   int auto_increment
        primary key,
    revision_number      int         not null,
    user_message         longtext    not null,
    automatic_log        longtext    not null,
    ip_address           char(39)    null,
    modified             datetime(6) not null,
    created              datetime(6) not null,
    deleted              tinyint(1)  not null,
    locked               tinyint(1)  not null,
    plugin_id            int         not null,
    previous_revision_id int         null,
    user_id              int         null,
    constraint wiki_revisionpluginr_plugin_id_c8f4475b_fk_wiki_revi
        foreign key (plugin_id) references wiki_revisionplugin (articleplugin_ptr_id),
    constraint wiki_revisionpluginr_previous_revision_id_38c877c0_fk_wiki_revi
        foreign key (previous_revision_id) references wiki_revisionpluginrevision (id),
    constraint wiki_revisionpluginrevision_user_id_ee40f729_fk_account_user_id
        foreign key (user_id) references account_user (id)
);

