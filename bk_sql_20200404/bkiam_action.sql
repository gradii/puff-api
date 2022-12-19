create table action
(
    pk         int unsigned auto_increment
        primary key,
    system_id  varchar(32)                         not null,
    id         varchar(32)                         not null,
    created_at timestamp default CURRENT_TIMESTAMP not null,
    updated_at timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    constraint idx_uk_system_action_id
        unique (system_id, id)
);

INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (1, 'bk_paas', 'access_developer_center', '2022-04-04 06:23:08', '2022-04-04 06:23:08');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (2, 'bk_paas', 'manage_smart', '2022-04-04 06:23:08', '2022-04-04 06:23:08');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (3, 'bk_paas', 'ops_system', '2022-04-04 06:23:08', '2022-04-04 06:23:08');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (4, 'bk_paas', 'manage_apigateway', '2022-04-04 06:23:08', '2022-04-04 06:23:08');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (5, 'bk_paas', 'develop_app', '2022-04-04 06:23:08', '2022-04-04 06:23:08');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (6, 'bk_usermgr', 'manage_field', '2022-04-04 06:24:16', '2022-04-04 06:24:16');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (7, 'bk_usermgr', 'view_audit', '2022-04-04 06:24:16', '2022-04-04 06:24:16');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (8, 'bk_usermgr', 'create_local_category', '2022-04-04 06:24:16', '2022-04-04 06:24:16');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (9, 'bk_usermgr', 'create_ldap_category', '2022-04-04 06:24:16', '2022-04-04 06:24:16');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (10, 'bk_usermgr', 'create_mad_category', '2022-04-04 06:24:16', '2022-04-04 06:24:16');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (11, 'bk_usermgr', 'create_custom_category', '2022-04-04 06:24:16', '2022-04-04 06:24:16');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (12, 'bk_usermgr', 'manage_category', '2022-04-04 06:24:16', '2022-04-04 06:24:16');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (13, 'bk_usermgr', 'manage_department', '2022-04-04 06:24:16', '2022-04-04 06:24:16');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (14, 'bk_usermgr', 'view_category', '2022-04-04 06:24:16', '2022-04-04 06:24:16');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (15, 'bk_usermgr', 'view_department', '2022-04-04 06:24:16', '2022-04-04 06:24:16');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (16, 'bk_itsm', 'project_create', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (17, 'bk_itsm', 'project_view', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (18, 'bk_itsm', 'project_edit', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (19, 'bk_itsm', 'service_create', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (20, 'bk_itsm', 'service_manage', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (21, 'bk_itsm', 'sla_manage', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (22, 'bk_itsm', 'workflow_create', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (23, 'bk_itsm', 'workflow_manage', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (24, 'bk_itsm', 'workflow_deploy', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (25, 'bk_itsm', 'flow_version_restore', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (26, 'bk_itsm', 'flow_version_manage', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (27, 'bk_itsm', 'flow_element_manage', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (28, 'bk_itsm', 'system_settings_manage', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (29, 'bk_itsm', 'role_create', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (30, 'bk_itsm', 'role_manage', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (31, 'bk_itsm', 'ticket_view', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (32, 'bk_itsm', 'knowledge_manage', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (33, 'bk_itsm', 'operational_data_view', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (34, 'bk_sops', 'project_create', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (35, 'bk_sops', 'project_view', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (36, 'bk_sops', 'project_edit', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (37, 'bk_sops', 'flow_create', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (38, 'bk_sops', 'project_fast_create_task', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (39, 'bk_sops', 'flow_view', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (40, 'bk_sops', 'flow_edit', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (41, 'bk_sops', 'flow_delete', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (42, 'bk_sops', 'flow_create_task', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (43, 'bk_sops', 'flow_create_mini_app', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (44, 'bk_sops', 'flow_create_periodic_task', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (45, 'bk_sops', 'task_view', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (46, 'bk_sops', 'task_edit', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (47, 'bk_sops', 'task_operate', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (48, 'bk_sops', 'task_claim', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (49, 'bk_sops', 'task_delete', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (50, 'bk_sops', 'task_clone', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (51, 'bk_sops', 'common_flow_create', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (52, 'bk_sops', 'common_flow_view', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (53, 'bk_sops', 'common_flow_edit', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (54, 'bk_sops', 'common_flow_delete', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (55, 'bk_sops', 'common_flow_create_task', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (56, 'bk_sops', 'common_flow_create_periodic_task', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (57, 'bk_sops', 'mini_app_view', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (58, 'bk_sops', 'mini_app_edit', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (59, 'bk_sops', 'mini_app_delete', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (60, 'bk_sops', 'mini_app_create_task', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (61, 'bk_sops', 'periodic_task_view', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (62, 'bk_sops', 'periodic_task_edit', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (63, 'bk_sops', 'periodic_task_delete', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (64, 'bk_sops', 'admin_view', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (65, 'bk_sops', 'admin_edit', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (66, 'bk_sops', 'audit_view', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (67, 'bk_sops', 'function_view', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (68, 'bk_sops', 'statistics_view', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (69, 'bk_nodeman', 'cloud_view', '2022-04-04 06:43:23', '2022-04-04 06:43:23');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (70, 'bk_nodeman', 'cloud_edit', '2022-04-04 06:43:23', '2022-04-04 06:43:23');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (71, 'bk_nodeman', 'cloud_delete', '2022-04-04 06:43:23', '2022-04-04 06:43:23');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (72, 'bk_nodeman', 'cloud_create', '2022-04-04 06:43:23', '2022-04-04 06:43:23');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (73, 'bk_nodeman', 'ap_view', '2022-04-04 06:43:23', '2022-04-04 06:43:23');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (74, 'bk_nodeman', 'ap_edit', '2022-04-04 06:43:23', '2022-04-04 06:43:23');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (75, 'bk_nodeman', 'ap_delete', '2022-04-04 06:43:23', '2022-04-04 06:43:23');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (76, 'bk_nodeman', 'ap_create', '2022-04-04 06:43:23', '2022-04-04 06:43:23');
INSERT INTO bkiam.action (pk, system_id, id, created_at, updated_at) VALUES (77, 'bk_nodeman', 'globe_task_config', '2022-04-04 06:43:23', '2022-04-04 06:43:23');
