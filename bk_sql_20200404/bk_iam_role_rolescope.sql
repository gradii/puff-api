create table role_rolescope
(
    id      int auto_increment
        primary key,
    role_id int         not null,
    type    varchar(32) not null,
    content longtext    not null
);

create index role_rolescope_role_id_b1c76dc3_idx
    on role_rolescope (role_id);

INSERT INTO bk_iam.role_rolescope (id, role_id, type, content) VALUES (1, 1, 'authorization', '[{"system_id":"*","actions":[{"id":"*","related_resource_types":[]}]}]');
INSERT INTO bk_iam.role_rolescope (id, role_id, type, content) VALUES (2, 1, 'subject', '[{"type":"*","id":"*"}]');
INSERT INTO bk_iam.role_rolescope (id, role_id, type, content) VALUES (3, 2, 'authorization', '[{"system_id":"bk_usermgr","actions":[{"id":"*","related_resource_types":[]}]}]');
INSERT INTO bk_iam.role_rolescope (id, role_id, type, content) VALUES (4, 2, 'subject', '[{"type":"*","id":"*"}]');
INSERT INTO bk_iam.role_rolescope (id, role_id, type, content) VALUES (5, 3, 'authorization', '[{"system_id":"bk_itsm","actions":[{"id":"*","related_resource_types":[]}]}]');
INSERT INTO bk_iam.role_rolescope (id, role_id, type, content) VALUES (6, 3, 'subject', '[{"type":"*","id":"*"}]');
INSERT INTO bk_iam.role_rolescope (id, role_id, type, content) VALUES (7, 4, 'authorization', '[{"system_id":"bk_paas","actions":[{"id":"*","related_resource_types":[]}]}]');
INSERT INTO bk_iam.role_rolescope (id, role_id, type, content) VALUES (8, 4, 'subject', '[{"type":"*","id":"*"}]');
INSERT INTO bk_iam.role_rolescope (id, role_id, type, content) VALUES (9, 5, 'authorization', '[{"system_id":"bk_sops","actions":[{"id":"*","related_resource_types":[]}]}]');
INSERT INTO bk_iam.role_rolescope (id, role_id, type, content) VALUES (10, 5, 'subject', '[{"type":"*","id":"*"}]');
INSERT INTO bk_iam.role_rolescope (id, role_id, type, content) VALUES (11, 6, 'authorization', '[{"system_id":"bk_nodeman","actions":[{"id":"*","related_resource_types":[]}]}]');
INSERT INTO bk_iam.role_rolescope (id, role_id, type, content) VALUES (12, 6, 'subject', '[{"type":"*","id":"*"}]');
