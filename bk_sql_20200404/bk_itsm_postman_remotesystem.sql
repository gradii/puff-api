create table postman_remotesystem
(
    id                  int auto_increment
        primary key,
    creator             varchar(64)    not null,
    create_at           datetime(6)    not null,
    update_at           datetime(6)    not null,
    updated_by          varchar(64)    not null,
    is_deleted          tinyint(1)     not null,
    system_id           int            not null,
    name                varchar(64)    not null,
    code                varchar(64)    not null,
    `desc`              varchar(255)   null,
    contact_information longtext       not null,
    is_builtin          tinyint(1)     not null,
    is_activated        tinyint(1)     not null,
    headers             longtext       null,
    cookies             longtext       null,
    variables           longtext       null,
    domain              varchar(10000) null,
    owners              varchar(64)    null
);

INSERT INTO bk_itsm.postman_remotesystem (id, creator, create_at, update_at, updated_by, is_deleted, system_id, name, code, `desc`, contact_information, is_builtin, is_activated, headers, cookies, variables, domain, owners) VALUES (1, '', '2022-04-04 18:29:33.888707', '2022-04-04 18:29:35.863933', '', 0, 2, '蓝鲸配置平台', 'CC', '蓝鲸配置平台是一款面向应用的CMDB，在ITIL体系里，CMDB是构建其它流程的基石，而在蓝鲸智云体系里，配置平台就扮演着基石的角色，为应用提供了各种运维场景的配置数据服务。', '', 1, 1, '[]', '[]', '[]', '', '');
INSERT INTO bk_itsm.postman_remotesystem (id, creator, create_at, update_at, updated_by, is_deleted, system_id, name, code, `desc`, contact_information, is_builtin, is_activated, headers, cookies, variables, domain, owners) VALUES (2, '', '2022-04-04 18:29:33.890461', '2022-04-04 18:29:35.865029', '', 0, 4, '蓝鲸作业平台', 'JOB', '作业平台（Job）是一套基于蓝鲸智云管控平台Agent管道之上的基础操作平台，具备大并发处理能力；除了支持脚本执行、文件拉取/分发、定时任务等一系列可实现的基础运维场景以外，还运用流程化的理念很好的将零碎的单个任务组装成一个作业流程；而每个任务都可做为一个原子节点，提供给其它系统和平台调度，实现调度自动化。', '', 1, 1, '[]', '[]', '[]', '', '');
INSERT INTO bk_itsm.postman_remotesystem (id, creator, create_at, update_at, updated_by, is_deleted, system_id, name, code, `desc`, contact_information, is_builtin, is_activated, headers, cookies, variables, domain, owners) VALUES (3, 'system', '2022-04-04 18:29:33.894971', '2022-04-04 18:29:35.866048', 'system', 0, 1, '蓝鲸统一登录', 'BK_LOGIN', '蓝鲸统一登录，管理用户登录验证，及用户信息', '', 1, 1, '[]', '[]', '[]', '', '');
INSERT INTO bk_itsm.postman_remotesystem (id, creator, create_at, update_at, updated_by, is_deleted, system_id, name, code, `desc`, contact_information, is_builtin, is_activated, headers, cookies, variables, domain, owners) VALUES (4, 'system', '2022-04-04 18:29:33.904609', '2022-04-04 18:29:35.867044', 'system', 0, 7, '蓝鲸开发者中心', 'BK_PAAS', '蓝鲸开发者中心', '', 1, 1, '[]', '[]', '[]', '', '');
INSERT INTO bk_itsm.postman_remotesystem (id, creator, create_at, update_at, updated_by, is_deleted, system_id, name, code, `desc`, contact_information, is_builtin, is_activated, headers, cookies, variables, domain, owners) VALUES (5, 'system', '2022-04-04 18:29:33.923795', '2022-04-04 18:29:35.868023', 'system', 0, 12, '用户管理', 'USERMANAGE', '用户管理', '', 1, 1, '[]', '[]', '[]', '', '');
INSERT INTO bk_itsm.postman_remotesystem (id, creator, create_at, update_at, updated_by, is_deleted, system_id, name, code, `desc`, contact_information, is_builtin, is_activated, headers, cookies, variables, domain, owners) VALUES (6, 'system', '2022-04-04 18:29:33.985130', '2022-04-04 18:29:35.869004', 'system', 0, 3, '蓝鲸管控平台', 'GSE', '蓝鲸管控平台', '', 1, 1, '[]', '[]', '[]', '', '');
