create table saas_resource_type
(
    pk              int unsigned auto_increment
        primary key,
    system_id       varchar(32)                             not null,
    id              varchar(32)                             not null,
    name            varchar(255)                            not null,
    name_en         varchar(255)                            not null,
    description     varchar(1024) default ''                not null,
    description_en  varchar(1024) default ''                not null,
    parents         text                                    not null,
    provider_config text                                    not null,
    version         int unsigned  default 0                 null,
    created_at      timestamp     default CURRENT_TIMESTAMP not null,
    updated_at      timestamp     default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    constraint idx_uk_system_rt_id
        unique (system_id, id)
);

INSERT INTO bkiam.saas_resource_type (pk, system_id, id, name, name_en, description, description_en, parents, provider_config, version, created_at, updated_at) VALUES (1, 'bk_paas', 'app', 'SaaS应用及外链应用', 'application', 'SaaS应用及外链应用', 'SaaS application and ext-lint application', '[]', '{"path":"/iam/api/v1/resources/"}', 0, '2022-04-04 06:23:08', '2022-04-04 06:23:08');
INSERT INTO bkiam.saas_resource_type (pk, system_id, id, name, name_en, description, description_en, parents, provider_config, version, created_at, updated_at) VALUES (2, 'bk_usermgr', 'field', '用户字段', 'profile dynamic field', '用户字段是一种给用户对象扩充属性的工具资源', 'balalala', '[]', '{"path":"/api/iam/v1/fields/"}', 0, '2022-04-04 06:24:16', '2022-04-04 06:24:16');
INSERT INTO bkiam.saas_resource_type (pk, system_id, id, name, name_en, description, description_en, parents, provider_config, version, created_at, updated_at) VALUES (3, 'bk_usermgr', 'category', '用户目录', 'category', '用户目录是...', 'category is a ...', '[]', '{"path":"/api/iam/v1/categories/"}', 0, '2022-04-04 06:24:16', '2022-04-04 06:24:16');
INSERT INTO bkiam.saas_resource_type (pk, system_id, id, name, name_en, description, description_en, parents, provider_config, version, created_at, updated_at) VALUES (4, 'bk_usermgr', 'department', '组织', 'department', '组织是...', 'department is a ...', '[]', '{"path":"/api/iam/v1/departments/"}', 0, '2022-04-04 06:24:16', '2022-04-04 06:24:16');
INSERT INTO bkiam.saas_resource_type (pk, system_id, id, name, name_en, description, description_en, parents, provider_config, version, created_at, updated_at) VALUES (5, 'bk_itsm', 'project', '项目', 'Project', '', '', '[]', '{"path":"/api/iam/resources/v1/"}', 1, '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.saas_resource_type (pk, system_id, id, name, name_en, description, description_en, parents, provider_config, version, created_at, updated_at) VALUES (6, 'bk_itsm', 'operational_data', '运营数据', 'Operational Data', '', '', '[]', '{"path":"/api/iam/resources/v1/"}', 1, '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.saas_resource_type (pk, system_id, id, name, name_en, description, description_en, parents, provider_config, version, created_at, updated_at) VALUES (7, 'bk_itsm', 'service', '服务', 'Service', '服务的查看、修改、删除', '', '[{"system_id":"bk_itsm","id":"project"}]', '{"path":"/api/iam/resources/v1/"}', 1, '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.saas_resource_type (pk, system_id, id, name, name_en, description, description_en, parents, provider_config, version, created_at, updated_at) VALUES (8, 'bk_itsm', 'sla', '服务协议管理', 'SLA', '包含服务模式，服务协议，优先级，单据状态的管理（增删改查）', '', '[{"system_id":"bk_itsm","id":"project"}]', '{"path":"/api/iam/resources/v1/"}', 1, '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.saas_resource_type (pk, system_id, id, name, name_en, description, description_en, parents, provider_config, version, created_at, updated_at) VALUES (9, 'bk_itsm', 'workflow', '流程', 'Workflow', '流程设计', '', '[{"system_id":"bk_itsm","id":"project"}]', '{"path":"/api/iam/resources/v1/"}', 1, '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.saas_resource_type (pk, system_id, id, name, name_en, description, description_en, parents, provider_config, version, created_at, updated_at) VALUES (10, 'bk_itsm', 'flow_version', '流程版本', 'Workflow Version', '有流程部署产生的版本管理', '', '[{"system_id":"bk_itsm","id":"project"}]', '{"path":"/api/iam/resources/v1/"}', 1, '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.saas_resource_type (pk, system_id, id, name, name_en, description, description_en, parents, provider_config, version, created_at, updated_at) VALUES (11, 'bk_itsm', 'role', '通用角色', 'General Role', '通用角色', '', '[{"system_id":"bk_itsm","id":"project"}]', '{"path":"/api/iam/resources/v1/"}', 1, '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.saas_resource_type (pk, system_id, id, name, name_en, description, description_en, parents, provider_config, version, created_at, updated_at) VALUES (12, 'bk_itsm', 'flow_element', '流程元素', 'Workflow Elements', '流程设计的基础元素：API，基础模型，公共字段，任务模板，公共触发器，数据字典', '', '[]', '{"path":"/api/iam/resources/v1/"}', 1, '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.saas_resource_type (pk, system_id, id, name, name_en, description, description_en, parents, provider_config, version, created_at, updated_at) VALUES (13, 'bk_itsm', 'system_settings', '系统配置', 'System Settings', '系统级别的配置：服务目录管理，系统配置管理', '', '[]', '{"path":"/api/iam/resources/v1/"}', 1, '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.saas_resource_type (pk, system_id, id, name, name_en, description, description_en, parents, provider_config, version, created_at, updated_at) VALUES (14, 'bk_itsm', 'ticket', '工单', 'Ticket', '工单', '', '[]', '{"path":"/api/iam/resources/v1/"}', 1, '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.saas_resource_type (pk, system_id, id, name, name_en, description, description_en, parents, provider_config, version, created_at, updated_at) VALUES (15, 'bk_itsm', 'knowledge', '知识库', 'Knowledge', '知识库', 'Knowledge', '[]', '{"path":"/api/iam/resources/v1/"}', 1, '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.saas_resource_type (pk, system_id, id, name, name_en, description, description_en, parents, provider_config, version, created_at, updated_at) VALUES (16, 'bk_sops', 'project', '项目', 'project', '', '', '[]', '{"path":"/iam/resource/api/v1/"}', 0, '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.saas_resource_type (pk, system_id, id, name, name_en, description, description_en, parents, provider_config, version, created_at, updated_at) VALUES (17, 'bk_sops', 'flow', '流程模板', 'flow', '', '', '[{"system_id":"bk_sops","id":"project"}]', '{"path":"/iam/resource/api/v1/"}', 0, '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.saas_resource_type (pk, system_id, id, name, name_en, description, description_en, parents, provider_config, version, created_at, updated_at) VALUES (18, 'bk_sops', 'task', '任务实例', 'task', '', '', '[{"system_id":"bk_sops","id":"project"}]', '{"path":"/iam/resource/api/v1/"}', 0, '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.saas_resource_type (pk, system_id, id, name, name_en, description, description_en, parents, provider_config, version, created_at, updated_at) VALUES (19, 'bk_sops', 'mini_app', '轻应用', 'mini application', '', '', '[{"system_id":"bk_sops","id":"project"}]', '{"path":"/iam/resource/api/v1/"}', 0, '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.saas_resource_type (pk, system_id, id, name, name_en, description, description_en, parents, provider_config, version, created_at, updated_at) VALUES (20, 'bk_sops', 'periodic_task', '周期任务', 'periodic task', '', '', '[{"system_id":"bk_sops","id":"project"}]', '{"path":"/iam/resource/api/v1/"}', 0, '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.saas_resource_type (pk, system_id, id, name, name_en, description, description_en, parents, provider_config, version, created_at, updated_at) VALUES (21, 'bk_sops', 'common_flow', '公共流程', 'common flow', '', '', '[]', '{"path":"/iam/resource/api/v1/"}', 0, '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.saas_resource_type (pk, system_id, id, name, name_en, description, description_en, parents, provider_config, version, created_at, updated_at) VALUES (22, 'bk_nodeman', 'cloud', '云区域', 'cloud area', '', '', '[]', '{"path":"/api/iam/v1/cloud"}', 1, '2022-04-04 06:43:23', '2022-04-04 06:48:34');
INSERT INTO bkiam.saas_resource_type (pk, system_id, id, name, name_en, description, description_en, parents, provider_config, version, created_at, updated_at) VALUES (23, 'bk_nodeman', 'ap', '接入点', 'Access Point', '', '', '[]', '{"path":"/api/iam/v1/ap"}', 1, '2022-04-04 06:43:23', '2022-04-04 06:48:34');
INSERT INTO bkiam.saas_resource_type (pk, system_id, id, name, name_en, description, description_en, parents, provider_config, version, created_at, updated_at) VALUES (24, 'bk_nodeman', 'global_settings', '全局配置', 'Global Settings', '', '', '[]', '{"path":"/api/iam/v1/gs"}', 1, '2022-04-04 06:43:23', '2022-04-04 06:48:34');
