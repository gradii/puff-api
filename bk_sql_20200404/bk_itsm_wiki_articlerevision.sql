create table wiki_articlerevision
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
    content              longtext     not null,
    title                varchar(512) not null,
    article_id           int          not null,
    previous_revision_id int          null,
    user_id              int          null,
    service_category_id  int          null,
    constraint wiki_articlerevision_article_id_revision_number_5bcd5334_uniq
        unique (article_id, revision_number),
    constraint wiki_articlerevision_article_id_e0fb2474_fk_wiki_article_id
        foreign key (article_id) references wiki_article (id),
    constraint wiki_articlerevision_previous_revision_id_bcfaf4c9_fk_wiki_arti
        foreign key (previous_revision_id) references wiki_articlerevision (id),
    constraint wiki_articlerevision_service_category_id_453465d9_fk_service_s
        foreign key (service_category_id) references service_servicecategory (id),
    constraint wiki_articlerevision_user_id_c687e4de_fk_account_user_id
        foreign key (user_id) references account_user (id)
);

INSERT INTO bk_itsm.wiki_articlerevision (id, revision_number, user_message, automatic_log, ip_address, modified, created, deleted, locked, content, title, article_id, previous_revision_id, user_id, service_category_id) VALUES (1, 1, 'root article created by system', '', '127.0.0.1', '2022-04-04 18:30:03.346235', '2022-04-04 18:30:03.346259', 0, 0, '## ***Welcome to the Knowledge Management***

 open for the public users or not. <br/>

The module of this Knowledge Management is based on the Markdown to operate.<br/>
Click "Help" in the sidebar,you could get  more details for the Markdown grammar.

[TOC]

### 1、How to add new article

Click the category,select the sub-menu. <br/>

You can add new article after  or in the category. Then fill in the information in the page.

### 2、How to edit the article

Click the "Edit" button on the right of the page. Only the author have the permission to edit the article.

### 3、How to insert web-link,image,attachment in the article

Click the "Edit" button on the right of the page. Select the button you need in the menu area, and follow the directions for the operation.<br/>

- Image/Attachment: It requires you to upload the image/attachment first ,before you insert it into the article.
- Web-link: You can add the absolute or relative URL.

Click "Help" in the sidebar for more information when you have any question.

### 4、How to search the article

Just input the keywords about the content/title/author/category, then click the link to read and check.', 'Home-en', 1, null, null, null);
INSERT INTO bk_itsm.wiki_articlerevision (id, revision_number, user_message, automatic_log, ip_address, modified, created, deleted, locked, content, title, article_id, previous_revision_id, user_id, service_category_id) VALUES (2, 1, 'category created by system', '', '127.0.0.1', '2022-04-04 18:30:03.363552', '2022-04-04 18:30:03.363568', 0, 0, '', '变更管理', 2, null, null, null);
INSERT INTO bk_itsm.wiki_articlerevision (id, revision_number, user_message, automatic_log, ip_address, modified, created, deleted, locked, content, title, article_id, previous_revision_id, user_id, service_category_id) VALUES (3, 1, 'category created by system', '', '127.0.0.1', '2022-04-04 18:30:03.375266', '2022-04-04 18:30:03.375285', 0, 0, '', '请求管理', 3, null, null, null);
INSERT INTO bk_itsm.wiki_articlerevision (id, revision_number, user_message, automatic_log, ip_address, modified, created, deleted, locked, content, title, article_id, previous_revision_id, user_id, service_category_id) VALUES (4, 1, 'category created by system', '', '127.0.0.1', '2022-04-04 18:30:03.386714', '2022-04-04 18:30:03.386730', 0, 0, '', '事件管理', 4, null, null, null);
INSERT INTO bk_itsm.wiki_articlerevision (id, revision_number, user_message, automatic_log, ip_address, modified, created, deleted, locked, content, title, article_id, previous_revision_id, user_id, service_category_id) VALUES (5, 1, 'category created by system', '', '127.0.0.1', '2022-04-04 18:30:03.398139', '2022-04-04 18:30:03.398156', 0, 0, '', '服务分类', 5, null, null, null);
INSERT INTO bk_itsm.wiki_articlerevision (id, revision_number, user_message, automatic_log, ip_address, modified, created, deleted, locked, content, title, article_id, previous_revision_id, user_id, service_category_id) VALUES (6, 1, 'category created by system', '', '127.0.0.1', '2022-04-04 18:30:03.409772', '2022-04-04 18:30:03.409798', 0, 0, '', '问题管理', 6, null, null, null);
