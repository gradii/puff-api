create table resource_type
(
    pk         int unsigned auto_increment
        primary key,
    system_id  varchar(32)                         not null,
    id         varchar(32)                         not null,
    created_at timestamp default CURRENT_TIMESTAMP not null,
    updated_at timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    constraint idx_uk_system_rt_id
        unique (system_id, id)
);

INSERT INTO bkiam.resource_type (pk, system_id, id, created_at, updated_at) VALUES (1, 'bk_paas', 'app', '2022-04-04 06:23:08', '2022-04-04 06:23:08');
INSERT INTO bkiam.resource_type (pk, system_id, id, created_at, updated_at) VALUES (2, 'bk_usermgr', 'field', '2022-04-04 06:24:16', '2022-04-04 06:24:16');
INSERT INTO bkiam.resource_type (pk, system_id, id, created_at, updated_at) VALUES (3, 'bk_usermgr', 'category', '2022-04-04 06:24:16', '2022-04-04 06:24:16');
INSERT INTO bkiam.resource_type (pk, system_id, id, created_at, updated_at) VALUES (4, 'bk_usermgr', 'department', '2022-04-04 06:24:16', '2022-04-04 06:24:16');
INSERT INTO bkiam.resource_type (pk, system_id, id, created_at, updated_at) VALUES (5, 'bk_itsm', 'project', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.resource_type (pk, system_id, id, created_at, updated_at) VALUES (6, 'bk_itsm', 'operational_data', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.resource_type (pk, system_id, id, created_at, updated_at) VALUES (7, 'bk_itsm', 'service', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.resource_type (pk, system_id, id, created_at, updated_at) VALUES (8, 'bk_itsm', 'sla', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.resource_type (pk, system_id, id, created_at, updated_at) VALUES (9, 'bk_itsm', 'workflow', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.resource_type (pk, system_id, id, created_at, updated_at) VALUES (10, 'bk_itsm', 'flow_version', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.resource_type (pk, system_id, id, created_at, updated_at) VALUES (11, 'bk_itsm', 'role', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.resource_type (pk, system_id, id, created_at, updated_at) VALUES (12, 'bk_itsm', 'flow_element', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.resource_type (pk, system_id, id, created_at, updated_at) VALUES (13, 'bk_itsm', 'system_settings', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.resource_type (pk, system_id, id, created_at, updated_at) VALUES (14, 'bk_itsm', 'ticket', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.resource_type (pk, system_id, id, created_at, updated_at) VALUES (15, 'bk_itsm', 'knowledge', '2022-04-04 06:29:20', '2022-04-04 06:29:20');
INSERT INTO bkiam.resource_type (pk, system_id, id, created_at, updated_at) VALUES (16, 'bk_sops', 'project', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.resource_type (pk, system_id, id, created_at, updated_at) VALUES (17, 'bk_sops', 'flow', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.resource_type (pk, system_id, id, created_at, updated_at) VALUES (18, 'bk_sops', 'task', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.resource_type (pk, system_id, id, created_at, updated_at) VALUES (19, 'bk_sops', 'mini_app', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.resource_type (pk, system_id, id, created_at, updated_at) VALUES (20, 'bk_sops', 'periodic_task', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.resource_type (pk, system_id, id, created_at, updated_at) VALUES (21, 'bk_sops', 'common_flow', '2022-04-04 06:38:05', '2022-04-04 06:38:05');
INSERT INTO bkiam.resource_type (pk, system_id, id, created_at, updated_at) VALUES (22, 'bk_nodeman', 'cloud', '2022-04-04 06:43:23', '2022-04-04 06:43:23');
INSERT INTO bkiam.resource_type (pk, system_id, id, created_at, updated_at) VALUES (23, 'bk_nodeman', 'ap', '2022-04-04 06:43:23', '2022-04-04 06:43:23');
INSERT INTO bkiam.resource_type (pk, system_id, id, created_at, updated_at) VALUES (24, 'bk_nodeman', 'global_settings', '2022-04-04 06:43:23', '2022-04-04 06:43:23');
