create table policy_policy
(
    id           int auto_increment
        primary key,
    creator      varchar(64) not null,
    updater      varchar(64) not null,
    created_time datetime(6) not null,
    updated_time datetime(6) not null,
    subject_type varchar(32) not null,
    subject_id   varchar(64) not null,
    system_id    varchar(32) not null,
    action_type  varchar(32) not null,
    action_id    varchar(64) not null,
    resources    longtext    not null,
    environment  longtext    not null,
    policy_id    bigint      not null
);

create index policy_policy_subject_id_subject_type_system_id_f305f61c_idx
    on policy_policy (subject_id, subject_type, system_id);

INSERT INTO bk_iam.policy_policy (id, creator, updater, created_time, updated_time, subject_type, subject_id, system_id, action_type, action_id, resources, environment, policy_id) VALUES (1, '', '', '2022-04-04 10:38:37.280965', '2022-04-04 10:38:37.280995', 'user', 'admin', 'bk_sops', 'view', 'task_view', '[{"system_id":"bk_sops","type":"task","condition":[{"instances":[],"attributes":[{"id":"iam_resource_owner","name":"\\u8d44\\u6e90\\u521b\\u5efa\\u8005","values":[{"id":"admin","name":"admin"}],"tag":null}],"id":"a73e23c936e041c4977d8fed71b4e8dc","tag":null}],"name":"\\u4efb\\u52a1\\u5b9e\\u4f8b","name_en":"task","tag":null,"selection_mode":""}]', '{}', 1);
INSERT INTO bk_iam.policy_policy (id, creator, updater, created_time, updated_time, subject_type, subject_id, system_id, action_type, action_id, resources, environment, policy_id) VALUES (2, '', '', '2022-04-04 10:38:37.281025', '2022-04-04 10:38:37.281033', 'user', 'admin', 'bk_sops', 'edit', 'task_edit', '[{"system_id":"bk_sops","type":"task","condition":[{"instances":[],"attributes":[{"id":"iam_resource_owner","name":"\\u8d44\\u6e90\\u521b\\u5efa\\u8005","values":[{"id":"admin","name":"admin"}],"tag":null}],"id":"c3630fcb81f14b51ab13621308162a88","tag":null}],"name":"\\u4efb\\u52a1\\u5b9e\\u4f8b","name_en":"task","tag":null,"selection_mode":""}]', '{}', 2);
INSERT INTO bk_iam.policy_policy (id, creator, updater, created_time, updated_time, subject_type, subject_id, system_id, action_type, action_id, resources, environment, policy_id) VALUES (3, '', '', '2022-04-04 10:38:37.281057', '2022-04-04 10:38:37.281065', 'user', 'admin', 'bk_sops', 'edit', 'task_operate', '[{"system_id":"bk_sops","type":"task","condition":[{"instances":[],"attributes":[{"id":"iam_resource_owner","name":"\\u8d44\\u6e90\\u521b\\u5efa\\u8005","values":[{"id":"admin","name":"admin"}],"tag":null}],"id":"44314a775636496f8f19be4a4036214b","tag":null}],"name":"\\u4efb\\u52a1\\u5b9e\\u4f8b","name_en":"task","tag":null,"selection_mode":""}]', '{}', 3);
INSERT INTO bk_iam.policy_policy (id, creator, updater, created_time, updated_time, subject_type, subject_id, system_id, action_type, action_id, resources, environment, policy_id) VALUES (4, '', '', '2022-04-04 10:38:37.281089', '2022-04-04 10:38:37.281097', 'user', 'admin', 'bk_sops', 'edit', 'task_claim', '[{"system_id":"bk_sops","type":"task","condition":[{"instances":[],"attributes":[{"id":"iam_resource_owner","name":"\\u8d44\\u6e90\\u521b\\u5efa\\u8005","values":[{"id":"admin","name":"admin"}],"tag":null}],"id":"6f5b2a324a4140239dd29f42d455f300","tag":null}],"name":"\\u4efb\\u52a1\\u5b9e\\u4f8b","name_en":"task","tag":null,"selection_mode":""}]', '{}', 4);
INSERT INTO bk_iam.policy_policy (id, creator, updater, created_time, updated_time, subject_type, subject_id, system_id, action_type, action_id, resources, environment, policy_id) VALUES (5, '', '', '2022-04-04 10:38:37.281132', '2022-04-04 10:38:37.281141', 'user', 'admin', 'bk_sops', 'delete', 'task_delete', '[{"system_id":"bk_sops","type":"task","condition":[{"instances":[],"attributes":[{"id":"iam_resource_owner","name":"\\u8d44\\u6e90\\u521b\\u5efa\\u8005","values":[{"id":"admin","name":"admin"}],"tag":null}],"id":"2d1ed187b0a04b17875fde2c847744f1","tag":null}],"name":"\\u4efb\\u52a1\\u5b9e\\u4f8b","name_en":"task","tag":null,"selection_mode":""}]', '{}', 5);
INSERT INTO bk_iam.policy_policy (id, creator, updater, created_time, updated_time, subject_type, subject_id, system_id, action_type, action_id, resources, environment, policy_id) VALUES (6, '', '', '2022-04-04 10:38:37.281165', '2022-04-04 10:38:37.281173', 'user', 'admin', 'bk_sops', 'create', 'task_clone', '[{"system_id":"bk_sops","type":"task","condition":[{"instances":[],"attributes":[{"id":"iam_resource_owner","name":"\\u8d44\\u6e90\\u521b\\u5efa\\u8005","values":[{"id":"admin","name":"admin"}],"tag":null}],"id":"10616de3cbac49299872c6fb3b71663b","tag":null}],"name":"\\u4efb\\u52a1\\u5b9e\\u4f8b","name_en":"task","tag":null,"selection_mode":""}]', '{}', 6);
