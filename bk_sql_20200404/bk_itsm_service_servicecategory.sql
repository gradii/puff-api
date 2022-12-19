create table service_servicecategory
(
    id         int auto_increment
        primary key,
    creator    varchar(64)  not null,
    create_at  datetime(6)  not null,
    update_at  datetime(6)  not null,
    updated_by varchar(64)  not null,
    end_at     datetime(6)  null,
    is_deleted tinyint(1)   not null,
    is_builtin tinyint(1)   not null,
    `key`      varchar(64)  not null,
    name       varchar(255) not null,
    `desc`     varchar(255) not null,
    constraint `key`
        unique (`key`)
);

INSERT INTO bk_itsm.service_servicecategory (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`) VALUES (1, '', '2022-04-04 18:29:34.665053', '2022-04-04 18:29:34.665082', '', null, 0, 0, 'change', '变更管理', '变更管理类相关服务');
INSERT INTO bk_itsm.service_servicecategory (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`) VALUES (2, '', '2022-04-04 18:29:34.666159', '2022-04-04 18:29:34.666171', '', null, 0, 0, 'request', '请求管理', '请求管理类相关服务');
INSERT INTO bk_itsm.service_servicecategory (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`) VALUES (3, '', '2022-04-04 18:29:34.667219', '2022-04-04 18:29:34.667230', '', null, 0, 0, 'event', '事件管理', '事件管理类相关服务');
INSERT INTO bk_itsm.service_servicecategory (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`) VALUES (4, '', '2022-04-04 18:29:34.668269', '2022-04-04 18:29:34.668281', '', null, 0, 0, 'public', '服务分类', '服务分类类相关服务');
INSERT INTO bk_itsm.service_servicecategory (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`) VALUES (5, '', '2022-04-04 18:29:34.669323', '2022-04-04 18:29:34.669335', '', null, 0, 0, 'question', '问题管理', '问题管理类相关服务');
