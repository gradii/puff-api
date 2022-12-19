create table wiki_article
(
    id                  int auto_increment
        primary key,
    created             datetime(6) not null,
    modified            datetime(6) not null,
    group_read          tinyint(1)  not null,
    group_write         tinyint(1)  not null,
    other_read          tinyint(1)  not null,
    other_write         tinyint(1)  not null,
    current_revision_id int         null,
    group_id            int         null,
    owner_id            int         null,
    constraint current_revision_id
        unique (current_revision_id),
    constraint wiki_article_current_revision_id_fc83ea0a_fk_wiki_arti
        foreign key (current_revision_id) references wiki_articlerevision (id),
    constraint wiki_article_group_id_bf035c83_fk_auth_group_id
        foreign key (group_id) references auth_group (id),
    constraint wiki_article_owner_id_956bc94a_fk_account_user_id
        foreign key (owner_id) references account_user (id)
);

INSERT INTO bk_itsm.wiki_article (id, created, modified, group_read, group_write, other_read, other_write, current_revision_id, group_id, owner_id) VALUES (1, '2022-04-04 18:30:03.340420', '2022-04-04 18:30:03.354171', 1, 1, 1, 1, 1, null, null);
INSERT INTO bk_itsm.wiki_article (id, created, modified, group_read, group_write, other_read, other_write, current_revision_id, group_id, owner_id) VALUES (2, '2022-04-04 18:30:03.360488', '2022-04-04 18:30:03.367325', 1, 1, 1, 1, 2, null, null);
INSERT INTO bk_itsm.wiki_article (id, created, modified, group_read, group_write, other_read, other_write, current_revision_id, group_id, owner_id) VALUES (3, '2022-04-04 18:30:03.372188', '2022-04-04 18:30:03.379064', 1, 1, 1, 1, 3, null, null);
INSERT INTO bk_itsm.wiki_article (id, created, modified, group_read, group_write, other_read, other_write, current_revision_id, group_id, owner_id) VALUES (4, '2022-04-04 18:30:03.383736', '2022-04-04 18:30:03.390469', 1, 1, 1, 1, 4, null, null);
INSERT INTO bk_itsm.wiki_article (id, created, modified, group_read, group_write, other_read, other_write, current_revision_id, group_id, owner_id) VALUES (5, '2022-04-04 18:30:03.395194', '2022-04-04 18:30:03.401939', 1, 1, 1, 1, 5, null, null);
INSERT INTO bk_itsm.wiki_article (id, created, modified, group_read, group_write, other_read, other_write, current_revision_id, group_id, owner_id) VALUES (6, '2022-04-04 18:30:03.406511', '2022-04-04 18:30:03.413806', 1, 1, 1, 1, 6, null, null);
