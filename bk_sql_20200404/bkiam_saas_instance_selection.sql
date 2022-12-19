create table saas_instance_selection
(
    pk                  int unsigned auto_increment
        primary key,
    system_id           varchar(32)                          not null,
    id                  varchar(32)                          not null,
    name                varchar(255)                         not null,
    name_en             varchar(255)                         not null,
    is_dynamic          tinyint(1) default 0                 not null,
    resource_type_chain text                                 not null,
    created_at          timestamp  default CURRENT_TIMESTAMP not null,
    updated_at          timestamp  default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    constraint idx_uk_system_id
        unique (system_id, id)
);

INSERT INTO bkiam.saas_instance_selection (pk, system_id, id, name, name_en, is_dynamic, resource_type_chain, created_at, updated_at) VALUES (1, 'bk_paas', 'app_view', '应用视图', 'app_view', 0, '[{"id":"app","system_id":"bk_paas"}]', '2022-04-04 06:23:08', '2022-04-04 06:23:08');
INSERT INTO bkiam.saas_instance_selection (pk, system_id, id, name, name_en, is_dynamic, resource_type_chain, created_at, updated_at) VALUES (2, 'bk_usermgr', 'category', '用户目录', 'category', 0, '[{"id":"category","system_id":"bk_usermgr"}]', '2022-04-04 06:24:16', '2022-04-04 06:24:16');
INSERT INTO bkiam.saas_instance_selection (pk, system_id, id, name, name_en, is_dynamic, resource_type_chain, created_at, updated_at) VALUES (3, 'bk_usermgr', 'department', '组织', 'department', 0, '[{"system_id":"bk_usermgr","id":"category"},{"system_id":"bk_usermgr","id":"department"}]', '2022-04-04 06:24:16', '2022-04-04 06:24:16');
INSERT INTO bkiam.saas_instance_selection (pk, system_id, id, name, name_en, is_dynamic, resource_type_chain, created_at, updated_at) VALUES (4, 'bk_itsm', 'project_list', '项目', 'Project', 0, '[{"system_id":"bk_itsm","id":"project"}]', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.saas_instance_selection (pk, system_id, id, name, name_en, is_dynamic, resource_type_chain, created_at, updated_at) VALUES (5, 'bk_itsm', 'service_list', '服务列表', 'Service List', 0, '[{"system_id":"bk_itsm","id":"project"},{"system_id":"bk_itsm","id":"service"}]', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.saas_instance_selection (pk, system_id, id, name, name_en, is_dynamic, resource_type_chain, created_at, updated_at) VALUES (6, 'bk_itsm', 'workflow_list', '流程实例', 'Workflow List', 0, '[{"system_id":"bk_itsm","id":"project"},{"system_id":"bk_itsm","id":"workflow"}]', '2022-04-04 06:29:20', '2022-04-04 06:29:21');
INSERT INTO bkiam.saas_instance_selection (pk, system_id, id, name, name_en, is_dynamic, resource_type_chain, created_at, updated_at) VALUES (7, 'bk_itsm', 'flow_version_list', '流程版本列表', 'Workflow Version List', 0, '[{"system_id":"bk_itsm","id":"project"},{"system_id":"bk_itsm","id":"flow_version"}]', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.saas_instance_selection (pk, system_id, id, name, name_en, is_dynamic, resource_type_chain, created_at, updated_at) VALUES (8, 'bk_itsm', 'role_list', '角色列表', 'Project and Common Flow', 0, '[{"system_id":"bk_itsm","id":"project"},{"system_id":"bk_itsm","id":"role"}]', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.saas_instance_selection (pk, system_id, id, name, name_en, is_dynamic, resource_type_chain, created_at, updated_at) VALUES (9, 'bk_sops', 'project', '项目', 'Project', 0, '[{"system_id":"bk_sops","id":"project"}]', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.saas_instance_selection (pk, system_id, id, name, name_en, is_dynamic, resource_type_chain, created_at, updated_at) VALUES (10, 'bk_sops', 'flow', '流程模板', 'Flow', 0, '[{"system_id":"bk_sops","id":"project"},{"system_id":"bk_sops","id":"flow"}]', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.saas_instance_selection (pk, system_id, id, name, name_en, is_dynamic, resource_type_chain, created_at, updated_at) VALUES (11, 'bk_sops', 'task', '任务实例', 'Task', 0, '[{"system_id":"bk_sops","id":"project"},{"system_id":"bk_sops","id":"task"}]', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.saas_instance_selection (pk, system_id, id, name, name_en, is_dynamic, resource_type_chain, created_at, updated_at) VALUES (12, 'bk_sops', 'common_flow', '公共流程', 'Common Flow', 0, '[{"system_id":"bk_sops","id":"common_flow"}]', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.saas_instance_selection (pk, system_id, id, name, name_en, is_dynamic, resource_type_chain, created_at, updated_at) VALUES (13, 'bk_sops', 'project_common_flow', '项目和公共流程', 'Project and Common Flow', 0, '[{"id":"project","system_id":"bk_sops"},{"system_id":"bk_sops","id":"common_flow"}]', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.saas_instance_selection (pk, system_id, id, name, name_en, is_dynamic, resource_type_chain, created_at, updated_at) VALUES (14, 'bk_sops', 'mini_app', '轻应用', 'Mini App', 0, '[{"id":"project","system_id":"bk_sops"},{"id":"mini_app","system_id":"bk_sops"}]', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.saas_instance_selection (pk, system_id, id, name, name_en, is_dynamic, resource_type_chain, created_at, updated_at) VALUES (15, 'bk_sops', 'periodic_task', '周期任务', 'Periodic Task', 0, '[{"system_id":"bk_sops","id":"project"},{"system_id":"bk_sops","id":"periodic_task"}]', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.saas_instance_selection (pk, system_id, id, name, name_en, is_dynamic, resource_type_chain, created_at, updated_at) VALUES (16, 'bk_nodeman', 'cloud_instance_selection', '云区域', 'Cloud', 0, '[{"system_id":"bk_nodeman","id":"cloud"}]', '2022-04-04 06:43:23', '2022-04-04 06:49:41');
INSERT INTO bkiam.saas_instance_selection (pk, system_id, id, name, name_en, is_dynamic, resource_type_chain, created_at, updated_at) VALUES (17, 'bk_nodeman', 'ap_instance_selection', '接入点', 'Access Point', 0, '[{"id":"ap","system_id":"bk_nodeman"}]', '2022-04-04 06:43:23', '2022-04-04 06:49:41');
