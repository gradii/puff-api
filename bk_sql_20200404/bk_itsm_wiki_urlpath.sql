create table wiki_urlpath
(
    id          int auto_increment
        primary key,
    slug        varchar(50)  null,
    lft         int unsigned not null,
    rght        int unsigned not null,
    tree_id     int unsigned not null,
    level       int unsigned not null,
    article_id  int          not null,
    parent_id   int          null,
    site_id     int          not null,
    moved_to_id int          null,
    constraint wiki_urlpath_site_id_parent_id_slug_e4942e5d_uniq
        unique (site_id, parent_id, slug),
    constraint wiki_urlpath_article_id_9ef0c0fb_fk_wiki_article_id
        foreign key (article_id) references wiki_article (id),
    constraint wiki_urlpath_moved_to_id_4718abf8_fk_wiki_urlpath_id
        foreign key (moved_to_id) references wiki_urlpath (id),
    constraint wiki_urlpath_parent_id_a6e675ac_fk_wiki_urlpath_id
        foreign key (parent_id) references wiki_urlpath (id),
    constraint wiki_urlpath_site_id_319be912_fk_django_site_id
        foreign key (site_id) references django_site (id)
);

create index wiki_urlpath_level_57f17cfd
    on wiki_urlpath (level);

create index wiki_urlpath_lft_46bfd227
    on wiki_urlpath (lft);

create index wiki_urlpath_moved_to_id_4718abf8
    on wiki_urlpath (moved_to_id);

create index wiki_urlpath_parent_id_a6e675ac
    on wiki_urlpath (parent_id);

create index wiki_urlpath_rght_186fc98e
    on wiki_urlpath (rght);

create index wiki_urlpath_slug_39d212eb
    on wiki_urlpath (slug);

create index wiki_urlpath_tree_id_090b475d
    on wiki_urlpath (tree_id);

INSERT INTO bk_itsm.wiki_urlpath (id, slug, lft, rght, tree_id, level, article_id, parent_id, site_id, moved_to_id) VALUES (1, null, 1, 12, 1, 0, 1, null, 1, null);
INSERT INTO bk_itsm.wiki_urlpath (id, slug, lft, rght, tree_id, level, article_id, parent_id, site_id, moved_to_id) VALUES (2, 'change', 2, 3, 1, 1, 2, 1, 1, null);
INSERT INTO bk_itsm.wiki_urlpath (id, slug, lft, rght, tree_id, level, article_id, parent_id, site_id, moved_to_id) VALUES (3, 'request', 4, 5, 1, 1, 3, 1, 1, null);
INSERT INTO bk_itsm.wiki_urlpath (id, slug, lft, rght, tree_id, level, article_id, parent_id, site_id, moved_to_id) VALUES (4, 'event', 6, 7, 1, 1, 4, 1, 1, null);
INSERT INTO bk_itsm.wiki_urlpath (id, slug, lft, rght, tree_id, level, article_id, parent_id, site_id, moved_to_id) VALUES (5, 'public', 8, 9, 1, 1, 5, 1, 1, null);
INSERT INTO bk_itsm.wiki_urlpath (id, slug, lft, rght, tree_id, level, article_id, parent_id, site_id, moved_to_id) VALUES (6, 'question', 10, 11, 1, 1, 6, 1, 1, null);
