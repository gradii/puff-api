create table service_servicecatalog
(
    id         int auto_increment
        primary key,
    creator    varchar(64)  null,
    create_at  datetime(6)  not null,
    update_at  datetime(6)  not null,
    updated_by varchar(64)  null,
    end_at     datetime(6)  null,
    is_deleted tinyint(1)   not null,
    `key`      varchar(255) not null,
    name       varchar(64)  not null,
    `desc`     varchar(255) null,
    lft        int unsigned not null,
    rght       int unsigned not null,
    tree_id    int unsigned not null,
    level      int unsigned not null,
    parent_id  int          null,
    xt_only    tinyint(1)   not null,
    `order`    int          not null,
    route      longtext     not null,
    constraint `key`
        unique (`key`),
    constraint service_servicecatal_parent_id_b1192a17_fk_service_s
        foreign key (parent_id) references service_servicecatalog (id)
);

create index service_servicecatalog_is_deleted_c247f0e1
    on service_servicecatalog (is_deleted);

create index service_servicecatalog_level_21ec4aab
    on service_servicecatalog (level);

create index service_servicecatalog_lft_5ef3ad70
    on service_servicecatalog (lft);

create index service_servicecatalog_parent_id_b1192a17
    on service_servicecatalog (parent_id);

create index service_servicecatalog_rght_04673015
    on service_servicecatalog (rght);

create index service_servicecatalog_tree_id_5880c6f3
    on service_servicecatalog (tree_id);

INSERT INTO bk_itsm.service_servicecatalog (id, creator, create_at, update_at, updated_by, end_at, is_deleted, `key`, name, `desc`, lft, rght, tree_id, level, parent_id, xt_only, `order`, route) VALUES (1, 'system', '2022-04-04 18:29:34.921159', '2022-04-04 18:29:34.921173', 'system', null, 0, 'root', '根目录', '', 1, 22, 1, 0, null, 0, 1, '[]');
INSERT INTO bk_itsm.service_servicecatalog (id, creator, create_at, update_at, updated_by, end_at, is_deleted, `key`, name, `desc`, lft, rght, tree_id, level, parent_id, xt_only, `order`, route) VALUES (2, 'system', '2022-04-04 18:29:34.923700', '2022-04-04 18:29:34.923713', 'system', null, 0, 'FUWUFANKUI', '服务反馈', '', 10, 17, 1, 1, 1, 0, 1, '[{"id":1,"name":"\\u6839\\u76ee\\u5f55"}]');
INSERT INTO bk_itsm.service_servicecatalog (id, creator, create_at, update_at, updated_by, end_at, is_deleted, `key`, name, `desc`, lft, rght, tree_id, level, parent_id, xt_only, `order`, route) VALUES (3, 'system', '2022-04-04 18:29:34.926979', '2022-04-04 18:29:34.926997', 'system', null, 0, 'ZIXUNJIANYI', '咨询建议', '', 13, 14, 1, 2, 2, 0, 1, '[{"id":1,"name":"\\u6839\\u76ee\\u5f55"},{"id":2,"name":"\\u670d\\u52a1\\u53cd\\u9988"}]');
INSERT INTO bk_itsm.service_servicecatalog (id, creator, create_at, update_at, updated_by, end_at, is_deleted, `key`, name, `desc`, lft, rght, tree_id, level, parent_id, xt_only, `order`, route) VALUES (4, 'system', '2022-04-04 18:29:34.931332', '2022-04-04 18:29:34.931352', 'system', null, 0, 'WENTIGUANLI', '问题管理', '', 15, 16, 1, 2, 2, 0, 1, '[{"id":1,"name":"\\u6839\\u76ee\\u5f55"},{"id":2,"name":"\\u670d\\u52a1\\u53cd\\u9988"}]');
INSERT INTO bk_itsm.service_servicecatalog (id, creator, create_at, update_at, updated_by, end_at, is_deleted, `key`, name, `desc`, lft, rght, tree_id, level, parent_id, xt_only, `order`, route) VALUES (5, 'system', '2022-04-04 18:29:34.935852', '2022-04-04 18:29:34.935870', 'system', null, 0, 'SHIJIANGUANLI', '事件管理', '', 11, 12, 1, 2, 2, 0, 1, '[{"id":1,"name":"\\u6839\\u76ee\\u5f55"},{"id":2,"name":"\\u670d\\u52a1\\u53cd\\u9988"}]');
INSERT INTO bk_itsm.service_servicecatalog (id, creator, create_at, update_at, updated_by, end_at, is_deleted, `key`, name, `desc`, lft, rght, tree_id, level, parent_id, xt_only, `order`, route) VALUES (6, 'system', '2022-04-04 18:29:34.940319', '2022-04-04 18:29:34.940341', 'system', null, 0, 'JICHUPEIZHI', '基础配置', '', 4, 9, 1, 1, 1, 0, 1, '[{"id":1,"name":"\\u6839\\u76ee\\u5f55"}]');
INSERT INTO bk_itsm.service_servicecatalog (id, creator, create_at, update_at, updated_by, end_at, is_deleted, `key`, name, `desc`, lft, rght, tree_id, level, parent_id, xt_only, `order`, route) VALUES (7, 'system', '2022-04-04 18:29:34.943758', '2022-04-04 18:29:34.943778', 'system', null, 0, 'ZHUJIGUANLI', '主机管理', '', 7, 8, 1, 2, 6, 0, 1, '[{"id":1,"name":"\\u6839\\u76ee\\u5f55"},{"id":6,"name":"\\u57fa\\u7840\\u914d\\u7f6e"}]');
INSERT INTO bk_itsm.service_servicecatalog (id, creator, create_at, update_at, updated_by, end_at, is_deleted, `key`, name, `desc`, lft, rght, tree_id, level, parent_id, xt_only, `order`, route) VALUES (8, 'system', '2022-04-04 18:29:34.948687', '2022-04-04 18:29:34.948717', 'system', null, 0, 'YEWUGUANLI', '业务管理', '', 5, 6, 1, 2, 6, 0, 1, '[{"id":1,"name":"\\u6839\\u76ee\\u5f55"},{"id":6,"name":"\\u57fa\\u7840\\u914d\\u7f6e"}]');
INSERT INTO bk_itsm.service_servicecatalog (id, creator, create_at, update_at, updated_by, end_at, is_deleted, `key`, name, `desc`, lft, rght, tree_id, level, parent_id, xt_only, `order`, route) VALUES (9, 'system', '2022-04-04 18:29:34.954152', '2022-04-04 18:29:34.954172', 'system', null, 0, 'ZIYUANFUWU', '资源服务', '', 18, 21, 1, 1, 1, 0, 1, '[{"id":1,"name":"\\u6839\\u76ee\\u5f55"}]');
INSERT INTO bk_itsm.service_servicecatalog (id, creator, create_at, update_at, updated_by, end_at, is_deleted, `key`, name, `desc`, lft, rght, tree_id, level, parent_id, xt_only, `order`, route) VALUES (10, 'system', '2022-04-04 18:29:34.957312', '2022-04-04 18:29:34.957326', 'system', null, 0, 'YUNWEIZIYUAN', '运维资源', '', 19, 20, 1, 2, 9, 0, 1, '[{"id":1,"name":"\\u6839\\u76ee\\u5f55"},{"id":9,"name":"\\u8d44\\u6e90\\u670d\\u52a1"}]');
INSERT INTO bk_itsm.service_servicecatalog (id, creator, create_at, update_at, updated_by, end_at, is_deleted, `key`, name, `desc`, lft, rght, tree_id, level, parent_id, xt_only, `order`, route) VALUES (11, 'system', '2022-04-04 18:29:34.962911', '2022-04-04 18:29:35.172799', 'system', null, 0, 'approve_service_catalog', '内置审批目录', '', 2, 3, 1, 1, 1, 0, 1, '[{"id":1,"name":"\\u6839\\u76ee\\u5f55"}]');
