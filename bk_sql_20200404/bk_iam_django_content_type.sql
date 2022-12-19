create table django_content_type
(
    id        int auto_increment
        primary key,
    app_label varchar(100) not null,
    model     varchar(100) not null,
    constraint django_content_type_app_label_model_76bd3d3b_uniq
        unique (app_label, model)
);

INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (1, 'account', 'user');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (9, 'account', 'userproperty');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (2, 'account', 'userproxy');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (10, 'account', 'verifyinfo');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (11, 'action', 'aggregateaction');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (3, 'admin', 'logentry');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (13, 'application', 'application');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (14, 'approval', 'actionprocessrelation');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (15, 'approval', 'approvalprocessglobalconfig');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (16, 'approval', 'groupprocessrelation');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (50, 'audit', 'eventformeta');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (5, 'auth', 'group');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (4, 'auth', 'permission');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (33, 'authorization', 'authapiallowlistconfig');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (6, 'contenttypes', 'contenttype');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (52, 'djcelery', 'crontabschedule');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (53, 'djcelery', 'intervalschedule');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (54, 'djcelery', 'periodictask');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (55, 'djcelery', 'periodictasks');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (56, 'djcelery', 'taskmeta');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (57, 'djcelery', 'tasksetmeta');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (58, 'djcelery', 'taskstate');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (59, 'djcelery', 'workerstate');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (17, 'group', 'group');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (18, 'group', 'groupauthorizelock');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (19, 'group', 'groupsaasattribute');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (48, 'long_task', 'subtaskstate');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (49, 'long_task', 'taskdetail');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (34, 'management', 'managementapiallowlistconfig');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (35, 'management', 'systemallowauthsystem');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (47, 'model_builder', 'mocksystemmodel');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (27, 'organization', 'category');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (31, 'organization', 'department');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (28, 'organization', 'departmentmember');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (32, 'organization', 'syncrecord');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (29, 'organization', 'user');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (30, 'organization', 'userleader');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (12, 'policy', 'policy');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (36, 'role', 'permission');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (37, 'role', 'role');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (44, 'role', 'rolecommonaction');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (38, 'role', 'roleperm');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (39, 'role', 'rolerelatedobject');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (40, 'role', 'rolescope');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (45, 'role', 'rolesource');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (41, 'role', 'roleuser');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (43, 'role', 'roleusersystempermission');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (42, 'role', 'scopesubject');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (7, 'sessions', 'session');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (8, 'sites', 'site');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (22, 'template', 'oldpermtemplate');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (23, 'template', 'oldpermtemplatepolicy');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (24, 'template', 'oldpermtemplatepolicyauthorized');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (20, 'template', 'permtemplate');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (21, 'template', 'permtemplatepolicyauthorized');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (26, 'template', 'permtemplatepregroupsync');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (25, 'template', 'permtemplatepreupdatelock');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (46, 'user', 'userprofile');
INSERT INTO bk_iam.django_content_type (id, app_label, model) VALUES (51, 'v2migrate', 'permtemplatepoliciescache');
