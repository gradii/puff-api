create table django_migrations
(
    id      int auto_increment
        primary key,
    app     varchar(255) not null,
    name    varchar(255) not null,
    applied datetime(6)  not null
);

INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2022-04-04 10:43:22.256330');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2022-04-04 10:43:22.265429');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (3, 'auth', '0001_initial', '2022-04-04 10:43:22.279961');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2022-04-04 10:43:22.300048');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (5, 'auth', '0003_alter_user_email_max_length', '2022-04-04 10:43:22.303605');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (6, 'auth', '0004_alter_user_username_opts', '2022-04-04 10:43:22.306644');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (7, 'auth', '0005_alter_user_last_login_null', '2022-04-04 10:43:22.309582');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (8, 'auth', '0006_require_contenttypes_0002', '2022-04-04 10:43:22.310161');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2022-04-04 10:43:22.313822');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (10, 'auth', '0008_alter_user_username_max_length', '2022-04-04 10:43:22.316760');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (11, 'account', '0001_initial', '2022-04-04 10:43:22.346198');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (12, 'account', '0002_init_superuser', '2022-04-04 10:43:22.371969');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (13, 'account', '0003_verifyinfo', '2022-04-04 10:43:22.379433');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (14, 'admin', '0001_initial', '2022-04-04 10:43:22.392015');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (15, 'admin', '0002_logentry_remove_auto_add', '2022-04-04 10:43:22.403895');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (16, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-04 10:43:22.408841');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (17, 'api', '0001_initial', '2022-04-04 10:43:22.415414');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (18, 'api', '0002_dataapirecord_response_errors', '2022-04-04 10:43:22.424675');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (19, 'auth', '0009_alter_user_last_name_max_length', '2022-04-04 10:43:22.429521');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (20, 'auth', '0010_alter_group_name_max_length', '2022-04-04 10:43:22.436497');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (21, 'auth', '0011_update_proxy_permissions', '2022-04-04 10:43:22.450080');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (22, 'component_framework', '0001_initial', '2022-04-04 10:43:22.454941');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (23, 'component_framework', '0002_delete_componentmodel', '2022-04-04 10:43:22.456922');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (24, 'component_framework', '0003_componentmodel', '2022-04-04 10:43:22.461463');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (25, 'component_framework', '0004_auto_20180413_1800', '2022-04-04 10:43:22.463577');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (26, 'component_framework', '0005_auto_20190723_1806', '2022-04-04 10:43:22.473771');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (27, 'component_framework', '0006_auto_20200213_0743', '2022-04-04 10:43:22.475748');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (28, 'django_signal_valve', '0001_initial', '2022-04-04 10:43:22.479662');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (29, 'djcelery', '0001_initial', '2022-04-04 10:43:22.536432');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (30, 'engine', '0001_initial', '2022-04-04 10:43:22.613315');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (31, 'engine', '0002_auto_20180109_1825', '2022-04-04 10:43:22.640598');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (32, 'engine', '0003_auto_20180717_1148', '2022-04-04 10:43:22.679713');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (33, 'engine', '0004_auto_20180717_1411', '2022-04-04 10:43:22.684362');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (34, 'engine', '0005_auto_20180717_1433', '2022-04-04 10:43:22.688929');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (35, 'engine', '0006_auto_20180717_1543', '2022-04-04 10:43:22.695643');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (36, 'engine', '0007_auto_20180717_2022', '2022-04-04 10:43:22.725429');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (37, 'engine', '0008_schedulecelerytask', '2022-04-04 10:43:22.731474');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (38, 'engine', '0009_status_error_ignorable', '2022-04-04 10:43:22.738383');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (39, 'engine', '0010_auto_20180830_1203', '2022-04-04 10:43:22.746467');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (40, 'engine', '0010_nodecelerytask', '2022-04-04 10:43:22.753027');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (41, 'engine', '0011_auto_20180830_1205', '2022-04-04 10:43:22.760716');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (42, 'engine', '0015_datasnapshot', '2022-04-04 10:43:22.765543');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (43, 'engine', '0016_auto_20181228_0345', '2022-04-04 10:43:22.780924');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (44, 'engine', '0017_auto_20190719_1010', '2022-04-04 10:43:22.787862');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (45, 'engine', '0018_auto_20190729_1041', '2022-04-04 10:43:22.858708');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (46, 'engine', '0019_auto_20190729_1044', '2022-04-04 10:43:22.875475');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (47, 'engine', '0020_pipelinemodel_priority', '2022-04-04 10:43:22.883763');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (48, 'engine', '0021_auto_20191213_0725', '2022-04-04 10:43:23.014418');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (49, 'engine', '0022_scheduleservice_multi_callback_enabled', '2022-04-04 10:43:23.026537');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (50, 'engine', '0023_status_state_refresh_at', '2022-04-04 10:43:23.033678');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (51, 'engine', '0024_auto_20200224_0308', '2022-04-04 10:43:23.051961');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (52, 'engine', '0025_multicallbackdata', '2022-04-04 10:43:23.060096');
INSERT INTO bk_nodeman.django_migrations (id, app, name, applied) VALUES (53, 'engine', '0026_auto_20200610_1442', '2022-04-04 10:43:23.099839');
