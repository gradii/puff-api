create table wiki_articleforobject
(
    id              int auto_increment
        primary key,
    object_id       int unsigned not null,
    is_mptt         tinyint(1)   not null,
    article_id      int          not null,
    content_type_id int          not null,
    constraint wiki_articleforobject_content_type_id_object_id_046be756_uniq
        unique (content_type_id, object_id),
    constraint wiki_articleforobjec_content_type_id_ba569059_fk_django_co
        foreign key (content_type_id) references django_content_type (id),
    constraint wiki_articleforobject_article_id_7d67d809_fk_wiki_article_id
        foreign key (article_id) references wiki_article (id)
);

INSERT INTO bk_itsm.wiki_articleforobject (id, object_id, is_mptt, article_id, content_type_id) VALUES (1, 1, 1, 1, 138);
INSERT INTO bk_itsm.wiki_articleforobject (id, object_id, is_mptt, article_id, content_type_id) VALUES (2, 2, 1, 2, 138);
INSERT INTO bk_itsm.wiki_articleforobject (id, object_id, is_mptt, article_id, content_type_id) VALUES (3, 3, 1, 3, 138);
INSERT INTO bk_itsm.wiki_articleforobject (id, object_id, is_mptt, article_id, content_type_id) VALUES (4, 4, 1, 4, 138);
INSERT INTO bk_itsm.wiki_articleforobject (id, object_id, is_mptt, article_id, content_type_id) VALUES (5, 5, 1, 5, 138);
INSERT INTO bk_itsm.wiki_articleforobject (id, object_id, is_mptt, article_id, content_type_id) VALUES (6, 6, 1, 6, 138);
