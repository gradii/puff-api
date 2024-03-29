create table django_migrations
(
    id      int auto_increment
        primary key,
    app     varchar(255) not null,
    name    varchar(255) not null,
    applied datetime(6)  not null
);

INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2022-04-04 10:38:03.113776');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2022-04-04 10:38:03.128062');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (3, 'auth', '0001_initial', '2022-04-04 10:38:03.155276');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2022-04-04 10:38:03.178572');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (5, 'auth', '0003_alter_user_email_max_length', '2022-04-04 10:38:03.183247');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (6, 'auth', '0004_alter_user_username_opts', '2022-04-04 10:38:03.187432');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (7, 'auth', '0005_alter_user_last_login_null', '2022-04-04 10:38:03.191357');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (8, 'auth', '0006_require_contenttypes_0002', '2022-04-04 10:38:03.191929');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2022-04-04 10:38:03.195951');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (10, 'auth', '0008_alter_user_username_max_length', '2022-04-04 10:38:03.200168');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (11, 'account', '0001_initial', '2022-04-04 10:38:03.229271');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (12, 'account', '0002_init_superuser', '2022-04-04 10:38:03.254191');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (13, 'account', '0003_verifyinfo', '2022-04-04 10:38:03.262890');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (14, 'account', '0004_create_cache_table', '2022-04-04 10:38:03.276745');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (15, 'admin', '0001_initial', '2022-04-04 10:38:03.287368');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (16, 'admin', '0002_logentry_remove_auto_add', '2022-04-04 10:38:03.302144');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (17, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-04 10:38:03.309692');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (18, 'core', '0001_initial', '2022-04-04 10:38:03.343599');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (19, 'core', '0002_business_time_zone', '2022-04-04 10:38:03.358663');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (20, 'core', '0003_business_executor', '2022-04-04 10:38:03.370056');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (21, 'core', '0004_environmentvariables', '2022-04-04 10:38:03.375331');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (22, 'core', '0005_business_life_cycle', '2022-04-04 10:38:03.385826');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (23, 'core', '0006_business_always_use_executor', '2022-04-04 10:38:03.397442');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (24, 'core', '0007_business_status', '2022-04-04 10:38:03.409489');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (25, 'core', '0008_auto_20181130_1510', '2022-04-04 10:38:03.417576');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (26, 'core', '0009_project_userdefaultproject', '2022-04-04 10:38:03.445724');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (27, 'core', '0010_create_project_for_exist_biz', '2022-04-04 10:38:03.468899');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (28, 'core', '0011_create_project_for_non_active_biz', '2022-04-04 10:38:03.482684');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (29, 'pipeline', '0001_initial', '2022-04-04 10:38:03.534974');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (30, 'pipeline', '0002_auto_20180109_1825', '2022-04-04 10:38:03.563192');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (31, 'tasktmpl3', '0001_initial', '2022-04-04 10:38:03.583574');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (32, 'tasktmpl3', '0002_auto_20180130_1633', '2022-04-04 10:38:03.609567');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (33, 'taskflow3', '0001_initial', '2022-04-04 10:38:03.697616');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (34, 'appmaker', '0001_initial', '2022-04-04 10:38:03.724286');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (35, 'appmaker', '0002_auto_20180209_1510', '2022-04-04 10:38:03.829251');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (36, 'appmaker', '0003_auto_20180301_1729', '2022-04-04 10:38:03.844120');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (37, 'appmaker', '0004_auto_20180425_1512', '2022-04-04 10:38:03.868574');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (38, 'appmaker', '0005_auto_20180823_1730', '2022-04-04 10:38:03.883980');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (39, 'appmaker', '0006_appmaker_project', '2022-04-04 10:38:03.900508');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (40, 'appmaker', '0007_add_project_relation', '2022-04-04 10:38:03.921613');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (41, 'appmaker', '0008_auto_20190520_1448', '2022-04-04 10:38:03.944572');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (42, 'appmaker', '0009_set_business_to_none', '2022-04-04 10:38:03.962863');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (43, 'appmaker', '0010_remove_appmaker_business', '2022-04-04 10:38:03.981909');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (44, 'appmaker', '0011_appmaker_new_category', '2022-04-04 10:38:04.022354');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (45, 'auth', '0009_alter_user_last_name_max_length', '2022-04-04 10:38:04.029884');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (46, 'auth', '0010_alter_group_name_max_length', '2022-04-04 10:38:04.040789');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (47, 'auth', '0011_update_proxy_permissions', '2022-04-04 10:38:04.063810');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (48, 'collection', '0001_initial', '2022-04-04 10:38:04.068896');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (49, 'collection', '0002_auto_20191214_1952', '2022-04-04 10:38:04.072990');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (50, 'collection', '0003_auto_20201103_2229', '2022-04-04 10:38:04.084185');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (51, 'collection', '0004_add_instance_id', '2022-04-04 10:38:04.100904');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (52, 'collection', '0005_auto_20201103_2229', '2022-04-04 10:38:04.103803');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (53, 'component_framework', '0001_initial', '2022-04-04 10:38:04.109559');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (54, 'component_framework', '0002_delete_componentmodel', '2022-04-04 10:38:04.112673');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (55, 'component_framework', '0003_componentmodel', '2022-04-04 10:38:04.118000');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (56, 'component_framework', '0004_auto_20180413_1800', '2022-04-04 10:38:04.121039');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (57, 'component_framework', '0005_auto_20190723_1806', '2022-04-04 10:38:04.130231');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (58, 'component_framework', '0006_auto_20200213_0743', '2022-04-04 10:38:04.133148');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (59, 'component_framework', '0007_auto_20201112_2244', '2022-04-04 10:38:04.143098');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (60, 'core', '0012_auto_20190612_2113', '2022-04-04 10:38:04.196624');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (61, 'core', '0013_projectcounter', '2022-04-04 10:38:04.213471');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (62, 'core', '0013_admin_init', '2022-04-04 10:38:04.237040');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (63, 'core', '0014_merge_20191211_1211', '2022-04-04 10:38:04.237756');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (64, 'core', '0015_auto_20200325_1458', '2022-04-04 10:38:04.331305');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (65, 'core', '0016_projectconfig', '2022-04-04 10:38:04.337299');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (66, 'core', '0016_projectbasedcomponent', '2022-04-04 10:38:04.342722');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (67, 'core', '0017_merge_20200812_1756', '2022-04-04 10:38:04.343419');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (68, 'core', '0018_auto_20200828_1647', '2022-04-04 10:38:04.357205');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (69, 'core', '0018_auto_20200824_1526', '2022-04-04 10:38:04.371787');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (70, 'core', '0019_merge_20200831_1807', '2022-04-04 10:38:04.379332');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (71, 'core', '0020_auto_20200908_2030', '2022-04-04 10:38:04.396018');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (72, 'core', '0021_auto_20210219_1936', '2022-04-04 10:38:04.408345');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (73, 'core', '0021_auto_20210125_1943', '2022-04-04 10:38:04.423717');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (74, 'core', '0022_merge_20210326_1511', '2022-04-04 10:38:04.424580');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (75, 'core', '0021_auto_20210427_1455', '2022-04-04 10:38:04.445830');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (76, 'core', '0023_merge_20210428_1450', '2022-04-04 10:38:04.446596');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (77, 'data_migration', '0001_user_migration', '2022-04-04 10:38:04.465951');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (78, 'data_migration', '0002_constraint_migration', '2022-04-04 10:38:04.486256');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (79, 'django_celery_beat', '0001_initial', '2022-04-04 10:38:04.512385');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (80, 'django_celery_beat', '0002_auto_20161118_0346', '2022-04-04 10:38:04.534054');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (81, 'django_celery_beat', '0003_auto_20161209_0049', '2022-04-04 10:38:04.548478');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (82, 'django_celery_beat', '0004_auto_20170221_0000', '2022-04-04 10:38:04.552717');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (83, 'django_celery_beat', '0005_add_solarschedule_events_choices', '2022-04-04 10:38:04.556697');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (84, 'django_celery_beat', '0006_auto_20180322_0932', '2022-04-04 10:38:04.588714');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (85, 'django_celery_beat', '0007_auto_20180521_0826', '2022-04-04 10:38:04.606050');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (86, 'django_celery_beat', '0008_auto_20180914_1922', '2022-04-04 10:38:04.624554');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (87, 'django_celery_beat', '0006_auto_20180210_1226', '2022-04-04 10:38:04.636562');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (88, 'django_celery_beat', '0006_periodictask_priority', '2022-04-04 10:38:04.644876');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (89, 'django_celery_beat', '0009_periodictask_headers', '2022-04-04 10:38:04.655676');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (90, 'django_celery_beat', '0010_auto_20190429_0326', '2022-04-04 10:38:04.804556');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (91, 'django_celery_beat', '0011_auto_20190508_0153', '2022-04-04 10:38:04.818464');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (92, 'django_celery_beat', '0012_periodictask_expire_seconds', '2022-04-04 10:38:04.834804');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (93, 'django_celery_results', '0001_initial', '2022-04-04 10:38:04.842809');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (94, 'django_celery_results', '0002_add_task_name_args_kwargs', '2022-04-04 10:38:04.862601');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (95, 'django_celery_results', '0003_auto_20181106_1101', '2022-04-04 10:38:04.866218');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (96, 'django_celery_results', '0004_auto_20190516_0412', '2022-04-04 10:38:04.906872');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (97, 'django_celery_results', '0005_taskresult_worker', '2022-04-04 10:38:04.914159');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (98, 'django_celery_results', '0006_taskresult_date_created', '2022-04-04 10:38:04.949276');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (99, 'django_celery_results', '0007_remove_taskresult_hidden', '2022-04-04 10:38:04.958272');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (100, 'django_signal_valve', '0001_initial', '2022-04-04 10:38:04.963920');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (101, 'engine', '0001_initial', '2022-04-04 10:38:05.052882');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (102, 'engine', '0002_auto_20180109_1825', '2022-04-04 10:38:05.073864');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (103, 'engine', '0003_auto_20180717_1148', '2022-04-04 10:38:05.116073');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (104, 'engine', '0004_auto_20180717_1411', '2022-04-04 10:38:05.121381');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (105, 'engine', '0005_auto_20180717_1433', '2022-04-04 10:38:05.126032');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (106, 'engine', '0006_auto_20180717_1543', '2022-04-04 10:38:05.133424');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (107, 'engine', '0007_auto_20180717_2022', '2022-04-04 10:38:05.155895');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (108, 'engine', '0008_schedulecelerytask', '2022-04-04 10:38:05.161989');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (109, 'engine', '0009_status_error_ignorable', '2022-04-04 10:38:05.170761');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (110, 'engine', '0010_auto_20180830_1203', '2022-04-04 10:38:05.177976');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (111, 'engine', '0010_nodecelerytask', '2022-04-04 10:38:05.183401');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (112, 'engine', '0011_auto_20180830_1205', '2022-04-04 10:38:05.190352');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (113, 'engine', '0015_datasnapshot', '2022-04-04 10:38:05.195313');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (114, 'engine', '0016_auto_20181228_0345', '2022-04-04 10:38:05.209074');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (115, 'engine', '0017_auto_20190719_1010', '2022-04-04 10:38:05.214040');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (116, 'engine', '0018_auto_20190729_1041', '2022-04-04 10:38:05.279122');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (117, 'engine', '0019_auto_20190729_1044', '2022-04-04 10:38:05.294640');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (118, 'engine', '0020_pipelinemodel_priority', '2022-04-04 10:38:05.303437');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (119, 'engine', '0021_auto_20191213_0725', '2022-04-04 10:38:05.368098');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (120, 'engine', '0022_scheduleservice_multi_callback_enabled', '2022-04-04 10:38:05.376227');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (121, 'engine', '0023_status_state_refresh_at', '2022-04-04 10:38:05.384247');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (122, 'engine', '0024_auto_20200224_0308', '2022-04-04 10:38:05.404662');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (123, 'engine', '0025_multicallbackdata', '2022-04-04 10:38:05.410792');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (124, 'engine', '0026_auto_20200610_1442', '2022-04-04 10:38:05.445580');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (125, 'engine', '0027_sendfailedcelerytask', '2022-04-04 10:38:05.453015');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (126, 'external_plugins', '0001_initial', '2022-04-04 10:38:05.483687');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (127, 'external_plugins', '0002_cachepackagesource_desc', '2022-04-04 10:38:05.491998');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (128, 'external_plugins', '0003_auto_20190524_1529', '2022-04-04 10:38:05.508267');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (129, 'external_plugins', '0004_synctask', '2022-04-04 10:38:05.516576');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (130, 'external_plugins', '0005_auto_20200325_1458', '2022-04-04 10:38:05.525787');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (131, 'external_plugins', '0006_s3originalsource_source_dir', '2022-04-04 10:38:05.534307');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (132, 'files', '0001_initial', '2022-04-04 10:38:05.541757');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (133, 'files', '0002_uploadticket', '2022-04-04 10:38:05.549856');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (134, 'function', '0001_initial', '2022-04-04 10:38:05.570710');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (135, 'function', '0002_auto_20180413_1804', '2022-04-04 10:38:05.583749');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (136, 'function', '0003_auto_20200325_1458', '2022-04-04 10:38:05.591507');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (137, 'iam_migration', '0001_initial', '2022-04-04 10:38:05.919945');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (138, 'iam_migration', '0002_bk_sops_202007091136', '2022-04-04 10:38:06.000678');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (139, 'iam_migration', '0003_bk_sops_202007221549', '2022-04-04 10:38:06.263211');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (140, 'iam_migration', '0004_bk_sops_202008051941', '2022-04-04 10:38:06.436100');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (141, 'iam_migration', '0005_bk_sops_202012081507', '2022-04-04 10:38:06.492064');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (142, 'label', '0001_initial', '2022-04-04 10:38:06.517016');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (143, 'log', '0001_initial', '2022-04-04 10:38:06.528998');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (144, 'log', '0002_auto_20180810_1054', '2022-04-04 10:38:06.552453');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (145, 'log', '0003_logentry_history_id', '2022-04-04 10:38:06.564037');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (146, 'log', '0004_auto_20180814_1555', '2022-04-04 10:38:06.595967');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (147, 'log', '0005_auto_20190729_1041', '2022-04-04 10:38:06.605636');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (148, 'log', '0006_auto_20201201_1638', '2022-04-04 10:38:06.612566');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (149, 'operate_record', '0001_initial', '2022-04-04 10:38:06.641203');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (150, 'pipeline', '0003_auto_20180206_1955', '2022-04-04 10:38:06.679609');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (151, 'pipeline', '0004_auto_20180516_1708', '2022-04-04 10:38:06.690866');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (152, 'pipeline', '0005_pipelineinstance_tree_info', '2022-04-04 10:38:06.708827');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (153, 'pipeline', '0006_auto_20180814_1622', '2022-04-04 10:38:06.738613');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (154, 'pipeline', '0007_templateversion', '2022-04-04 10:38:06.757090');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (155, 'pipeline', '0007_templaterelationship', '2022-04-04 10:38:06.771998');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (156, 'pipeline', '0008_auto_20180824_1115', '2022-04-04 10:38:06.830811');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (157, 'pipeline', '0011_auto_20180906_1045', '2022-04-04 10:38:06.863685');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (158, 'pipeline', '0012_templatecurrentversion', '2022-04-04 10:38:06.870320');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (159, 'pipeline', '0013_old_template_process', '2022-04-04 10:38:06.913678');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (160, 'pipeline', '0014_auto_20181127_1053', '2022-04-04 10:38:06.940220');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (161, 'pipeline', '0015_auto_20181214_1453', '2022-04-04 10:38:07.025961');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (162, 'pipeline', '0016_auto_20181220_0958', '2022-04-04 10:38:07.048891');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (163, 'periodic_task', '0001_initial', '2022-04-04 10:38:07.152546');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (164, 'periodic_task', '0002_auto_20190103_1918', '2022-04-04 10:38:07.184277');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (165, 'periodic_task', '0003_auto_20191213_0819', '2022-04-04 10:38:07.270285');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (166, 'periodic_task', '0004_auto_20191213_0828', '2022-04-04 10:38:07.295397');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (167, 'periodic_task', '0005_migrate_task', '2022-04-04 10:38:07.429337');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (168, 'periodic_task', '0006_change_task_ref_table', '2022-04-04 10:38:07.449530');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (169, 'taskflow3', '0002_taskflowinstance_template_source', '2022-04-04 10:38:07.466247');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (170, 'taskflow3', '0003_auto_20181214_1453', '2022-04-04 10:38:07.478679');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (171, 'periodictask', '0001_initial', '2022-04-04 10:38:07.522902');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (172, 'periodictask', '0002_periodictask_project', '2022-04-04 10:38:07.562294');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (173, 'periodictask', '0003_add_project_relation', '2022-04-04 10:38:07.611049');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (174, 'periodictask', '0004_set_business_to_none', '2022-04-04 10:38:07.657464');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (175, 'periodictask', '0005_remove_periodictask_business', '2022-04-04 10:38:07.684189');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (176, 'periodictask', '0006_periodictask_template_source', '2022-04-04 10:38:07.699574');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (177, 'periodictask', '0007_auto_20200325_1458', '2022-04-04 10:38:07.711070');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (178, 'pipeline', '0017_pipelinetemplate_has_subprocess', '2022-04-04 10:38:07.721296');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (179, 'pipeline', '0018_set_has_subprocess', '2022-04-04 10:38:07.766211');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (180, 'pipeline', '0019_delete_variablemodel', '2022-04-04 10:38:07.770988');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (181, 'pipeline', '0020_auto_20190906_1119', '2022-04-04 10:38:07.800808');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (182, 'pipeline', '0021_auto_20190906_1143', '2022-04-04 10:38:07.892045');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (183, 'pipeline', '0022_pipelineinstance_is_revoked', '2022-04-04 10:38:07.908340');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (184, 'pipeline', '0023_set_is_revoked', '2022-04-04 10:38:08.068650');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (185, 'pipeline', '0024_auto_20200213_0738', '2022-04-04 10:38:08.167787');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (186, 'pipeline', '0025_auto_20200813_1216', '2022-04-04 10:38:08.178766');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (187, 'pipeline', '0026_auto_20201028_1049', '2022-04-04 10:38:08.189121');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (188, 'pipeline', '0027_auto_20201123_1552', '2022-04-04 10:38:08.198085');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (189, 'pipeline', '0028_auto_20201227_1952', '2022-04-04 10:38:08.218898');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (190, 'pipeline_external_plugins', '0001_initial', '2022-04-04 10:38:08.244442');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (191, 'pipeline_external_plugins', '0002_s3source_source_dir', '2022-04-04 10:38:08.253963');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (192, 'pipeline_web_core', '0001_initial', '2022-04-04 10:38:08.286637');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (193, 'pipeline_web_label', '0001_initial', '2022-04-04 10:38:08.338901');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (194, 'plugin_management', '0001_initial', '2022-04-04 10:38:08.371372');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (195, 'sessions', '0001_initial', '2022-04-04 10:38:08.378389');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (196, 'sites', '0001_initial', '2022-04-04 10:38:08.386700');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (197, 'sites', '0002_alter_domain_unique', '2022-04-04 10:38:08.393907');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (198, 'statistics', '0001_initial', '2022-04-04 10:38:08.411053');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (199, 'statistics', '0002_auto_20180817_1212', '2022-04-04 10:38:08.419353');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (200, 'statistics', '0003_auto_20180821_2015', '2022-04-04 10:38:08.450362');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (201, 'statistics', '0004_instanceinpipeline_templateinpipeline', '2022-04-04 10:38:08.465444');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (202, 'statistics', '0005_init_pipeline_data', '2022-04-04 10:38:08.466436');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (203, 'statistics', '0006_auto_20181115_1208', '2022-04-04 10:38:08.482209');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (204, 'statistics', '0007_init_pipeline_data', '2022-04-04 10:38:08.538333');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (205, 'statistics', '0008_auto_20181116_1448', '2022-04-04 10:38:08.600336');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (206, 'statistics', '0009_auto_20181116_1627', '2022-04-04 10:38:08.614499');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (207, 'statistics', '0010_auto_20190304_1747', '2022-04-04 10:38:08.652039');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (208, 'statistics', '0011_auto_20200217_0822', '2022-04-04 10:38:08.680391');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (209, 'statistics', '0012_auto_20201123_1552', '2022-04-04 10:38:08.695390');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (210, 'statistics', '0013_auto_20201201_1506', '2022-04-04 10:38:08.711436');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (211, 'taskflow3', '0004_auto_20190103_1918', '2022-04-04 10:38:08.726393');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (212, 'taskflow3', '0005_taskflowinstance_project', '2022-04-04 10:38:08.752850');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (213, 'taskflow3', '0006_auto_20190523_1509', '2022-04-04 10:38:08.772842');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (214, 'taskflow3', '0007_add_project_relation', '2022-04-04 10:38:08.827224');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (215, 'taskflow3', '0008_set_business_to_none', '2022-04-04 10:38:08.972274');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (216, 'taskflow3', '0009_remove_taskflowinstance_business', '2022-04-04 10:38:08.997846');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (217, 'taskflow3', '0010_auto_20190827_1943', '2022-04-04 10:38:09.010849');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (218, 'taskflow3', '0011_auto_20190906_1119', '2022-04-04 10:38:09.036142');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (219, 'taskflow3', '0012_auto_20200325_1458', '2022-04-04 10:38:09.087468');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (220, 'taskflow3', '0013_auto_20210125_1943', '2022-04-04 10:38:09.101213');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (221, 'taskflow3', '0014_auto_20210319_1757', '2022-04-04 10:38:09.113805');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (222, 'tasktmpl3', '0003_auto_20180301_1732', '2022-04-04 10:38:09.129475');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (223, 'tasktmpl3', '0004_auto_20180822_1206', '2022-04-04 10:38:09.143942');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (224, 'tasktmpl3', '0005_tasktemplate_tmp_field', '2022-04-04 10:38:09.162917');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (225, 'tasktmpl3', '0006_auto_20180908_1447', '2022-04-04 10:38:09.225819');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (226, 'tasktmpl3', '0008_auto_20180908_1453', '2022-04-04 10:38:09.249986');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (227, 'tasktmpl3', '0009_auto_20180908_1454', '2022-04-04 10:38:09.304470');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (228, 'tasktmpl3', '0010_remove_tasktemplate_tmp_field', '2022-04-04 10:38:09.325095');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (229, 'tasktmpl3', '0011_tasktemplate_project', '2022-04-04 10:38:09.344746');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (230, 'tasktmpl3', '0012_add_project_relation', '2022-04-04 10:38:09.402758');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (231, 'tasktmpl3', '0013_set_business_to_none', '2022-04-04 10:38:09.552584');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (232, 'tasktmpl3', '0014_remove_tasktemplate_business', '2022-04-04 10:38:09.572900');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (233, 'tasktmpl3', '0015_auto_20190523_1509', '2022-04-04 10:38:09.587621');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (234, 'tasktmpl3', '0016_auto_20200325_1458', '2022-04-04 10:38:09.601148');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (235, 'tasktmpl3', '0017_tasktemplate_executor_proxy', '2022-04-04 10:38:09.618780');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (236, 'tasktmpl3', '0018_auto_20210319_1752', '2022-04-04 10:38:09.634882');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (237, 'template', '0001_initial', '2022-04-04 10:38:09.657049');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (238, 'template', '0002_auto_20181204_1813', '2022-04-04 10:38:09.687683');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (239, 'template', '0003_auto_20181205_1153', '2022-04-04 10:38:09.705357');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (240, 'template', '0004_set_min_template_id', '2022-04-04 10:38:09.761080');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (241, 'template', '0005_auto_20190523_1509', '2022-04-04 10:38:09.767899');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (242, 'template', '0006_auto_20200325_1458', '2022-04-04 10:38:09.782458');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (243, 'template', '0007_delete_commontmplperm', '2022-04-04 10:38:09.788031');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (244, 'template', '0008_auto_20210319_1756', '2022-04-04 10:38:09.801574');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (245, 'variable_framework', '0001_initial', '2022-04-04 10:38:09.809947');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (246, 'version_log', '0001_initial', '2022-04-04 10:38:09.817439');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (247, 'weixin_core', '0001_initial', '2022-04-04 10:38:09.828065');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (248, 'weixin_core', '0002_auto_20190513_1332', '2022-04-04 10:38:09.845356');
INSERT INTO bk_sops.django_migrations (id, app, name, applied) VALUES (249, 'weixin_core', '0003_auto_20190531_1205', '2022-04-04 10:38:09.856459');
