create table workflow_table
(
    id           int auto_increment
        primary key,
    creator      varchar(64)  null,
    create_at    datetime(6)  not null,
    update_at    datetime(6)  not null,
    updated_by   varchar(64)  null,
    end_at       datetime(6)  null,
    is_deleted   tinyint(1)   not null,
    name         varchar(255) not null,
    `desc`       varchar(255) null,
    fields_order longtext     not null,
    is_builtin   tinyint(1)   not null,
    version      varchar(64)  null
);

create index workflow_table_is_deleted_5f2de201
    on workflow_table (is_deleted);

INSERT INTO bk_itsm.workflow_table (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, fields_order, is_builtin, version) VALUES (1, null, '2022-04-04 18:29:34.363135', '2022-04-04 18:29:34.366366', null, null, 0, '默认', '默认基础模型', '[1,2,3,4,5]', 1, 'EMPTY');
INSERT INTO bk_itsm.workflow_table (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, fields_order, is_builtin, version) VALUES (2, null, '2022-04-04 18:29:34.369649', '2022-04-04 18:29:34.372492', null, null, 0, '变更', '变更管理基础模型', '[1,2,3,4,5]', 1, 'EMPTY');
INSERT INTO bk_itsm.workflow_table (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, fields_order, is_builtin, version) VALUES (3, null, '2022-04-04 18:29:34.375639', '2022-04-04 18:29:34.378671', null, null, 0, '事件', '事件管理基础模型', '[1,2,3,4,5]', 1, 'EMPTY');
INSERT INTO bk_itsm.workflow_table (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, fields_order, is_builtin, version) VALUES (4, null, '2022-04-04 18:29:34.381786', '2022-04-04 18:29:34.384640', null, null, 0, '请求', '请求管理基础模型', '[1,2,3,4,5]', 1, 'EMPTY');
INSERT INTO bk_itsm.workflow_table (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, fields_order, is_builtin, version) VALUES (5, null, '2022-04-04 18:29:34.387636', '2022-04-04 18:29:34.390445', null, null, 0, '问题', '问题管理基础模型', '[1,2,3,4,5]', 1, 'EMPTY');
INSERT INTO bk_itsm.workflow_table (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, fields_order, is_builtin, version) VALUES (6, null, '2022-04-04 18:29:34.393472', '2022-04-04 18:29:34.396451', null, null, 0, '审批', '一般审批流程基础模型', '[1,5,6,7]', 1, 'EMPTY');
INSERT INTO bk_itsm.workflow_table (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, fields_order, is_builtin, version) VALUES (7, null, '2022-04-04 18:29:35.027854', '2022-04-04 18:29:35.032422', null, null, 0, '简单模型_20220404182935', '2个字段', '[1,5]', 0, 'EMPTY');
INSERT INTO bk_itsm.workflow_table (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, fields_order, is_builtin, version) VALUES (8, null, '2022-04-04 18:29:35.056148', '2022-04-04 18:29:35.068727', null, null, 0, '权限申请模型_20220404182935', '', '[1,5,8,11,9,10]', 0, 'EMPTY');
INSERT INTO bk_itsm.workflow_table (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, `desc`, fields_order, is_builtin, version) VALUES (9, null, '2022-04-04 18:29:35.178294', '2022-04-04 18:29:35.182366', null, null, 0, '审批_20220404182935', '一般审批流程基础模型', '[1,5]', 0, 'EMPTY');
