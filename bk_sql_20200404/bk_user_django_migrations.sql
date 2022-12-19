create table django_migrations
(
    id      int auto_increment
        primary key,
    app     varchar(255) not null,
    name    varchar(255) not null,
    applied datetime(6)  not null
);

INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2022-04-04 10:24:10.671751');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2022-04-04 10:24:10.718881');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2022-04-04 10:24:10.736600');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2022-04-04 10:24:10.747585');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (5, 'profiles', '0001_initial', '2022-04-04 10:24:10.828180');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (6, 'audit', '0001_initial', '2022-04-04 10:24:10.898223');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (7, 'audit', '0002_auto_20191122_1658', '2022-04-04 10:24:10.918581');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (8, 'audit', '0003_auto_20210516_1652', '2022-04-04 10:24:10.942304');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (9, 'contenttypes', '0002_remove_content_type_name', '2022-04-04 10:24:10.967718');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (10, 'auth', '0002_alter_permission_name_max_length', '2022-04-04 10:24:10.984738');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (11, 'auth', '0003_alter_user_email_max_length', '2022-04-04 10:24:10.990933');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (12, 'auth', '0004_alter_user_username_opts', '2022-04-04 10:24:10.995887');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (13, 'auth', '0005_alter_user_last_login_null', '2022-04-04 10:24:11.014042');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (14, 'auth', '0006_require_contenttypes_0002', '2022-04-04 10:24:11.015235');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (15, 'auth', '0007_alter_validators_add_error_messages', '2022-04-04 10:24:11.020934');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (16, 'auth', '0008_alter_user_username_max_length', '2022-04-04 10:24:11.040381');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (17, 'categories', '0001_initial', '2022-04-04 10:24:11.057283');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (18, 'categories', '0002_auto_20191104_1537', '2022-04-04 10:24:11.067896');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (19, 'categories', '0003_profilecategory_last_synced_time', '2022-04-04 10:24:11.106523');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (20, 'categories', '0004_auto_20191117_2349', '2022-04-04 10:24:11.109941');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (21, 'categories', '0005_auto_20200102_1554', '2022-04-04 10:24:11.149420');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (22, 'categories', '0006_auto_20200102_1554', '2022-04-04 10:24:11.161815');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (23, 'categories', '0007_auto_20210316_1806', '2022-04-04 10:24:11.202003');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (24, 'categories', '0008_auto_20210316_1814', '2022-04-04 10:24:11.212740');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (25, 'departments', '0001_initial', '2022-04-04 10:24:11.294641');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (26, 'departments', '0002_auto_20191106_2226', '2022-04-04 10:24:11.335228');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (27, 'departments', '0003_department_extras', '2022-04-04 10:24:11.367860');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (28, 'departments', '0004_auto_20191117_2345', '2022-04-04 10:24:11.374594');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (29, 'django_celery_beat', '0001_initial', '2022-04-04 10:24:11.431167');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (30, 'django_celery_beat', '0002_auto_20161118_0346', '2022-04-04 10:24:11.445066');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (31, 'django_celery_beat', '0003_auto_20161209_0049', '2022-04-04 10:24:11.451700');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (32, 'django_celery_beat', '0004_auto_20170221_0000', '2022-04-04 10:24:11.455165');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (33, 'django_celery_beat', '0005_add_solarschedule_events_choices', '2022-04-04 10:24:11.458600');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (34, 'django_celery_beat', '0006_auto_20180322_0932', '2022-04-04 10:24:11.477652');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (35, 'django_celery_beat', '0007_auto_20180521_0826', '2022-04-04 10:24:11.529353');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (36, 'django_celery_beat', '0008_auto_20180914_1922', '2022-04-04 10:24:11.541829');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (37, 'django_celery_beat', '0006_auto_20180210_1226', '2022-04-04 10:24:11.549940');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (38, 'django_celery_beat', '0006_periodictask_priority', '2022-04-04 10:24:11.557543');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (39, 'django_celery_beat', '0009_periodictask_headers', '2022-04-04 10:24:11.565224');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (40, 'django_celery_beat', '0010_auto_20190429_0326', '2022-04-04 10:24:11.668094');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (41, 'django_celery_beat', '0011_auto_20190508_0153', '2022-04-04 10:24:11.682453');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (42, 'profiles', '0002_auto_20191104_1541', '2022-04-04 10:24:11.700361');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (43, 'profiles', '0003_profile_enable', '2022-04-04 10:24:11.711234');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (44, 'profiles', '0004_auto_20191111_0102', '2022-04-04 10:24:11.719508');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (45, 'profiles', '0005_dynamicfieldinfo_configurable', '2022-04-04 10:24:11.748168');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (46, 'profiles', '0006_auto_20191111_2011', '2022-04-04 10:24:11.761832');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (47, 'profiles', '0007_auto_20191112_2135', '2022-04-04 10:24:11.774551');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (48, 'profiles', '0008_auto_20191117_2347', '2022-04-04 10:24:11.784435');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (49, 'profiles', '0009_profile_code', '2022-04-04 10:24:11.793735');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (50, 'profiles', '0010_auto_20191118_1952', '2022-04-04 10:24:11.799570');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (51, 'profiles', '0011_auto_20191121_2004', '2022-04-04 10:24:11.815224');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (52, 'profiles', '0012_auto_20191121_2007', '2022-04-04 10:24:11.826915');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (53, 'profiles', '0013_auto_20191126_1759', '2022-04-04 10:24:11.865891');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (54, 'profiles', '0014_profiletokenholder', '2022-04-04 10:24:11.879031');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (55, 'profiles', '0015_auto_20191204_2228', '2022-04-04 10:24:11.888831');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (56, 'profiles', '0016_auto_20200106_1751', '2022-04-04 10:24:11.916347');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (57, 'profiles', '0017_auto_20200106_1752', '2022-04-04 10:24:11.933781');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (58, 'profiles', '0018_auto_20200610_1546', '2022-04-04 10:24:11.982917');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (59, 'profiles', '0019_auto_20200729_1543', '2022-04-04 10:24:12.041299');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (60, 'profiles', '0020_auto_20200729_1549', '2022-04-04 10:24:12.060467');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (61, 'profiles', '0021_auto_20210326_1640', '2022-04-04 10:24:12.087682');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (62, 'sessions', '0001_initial', '2022-04-04 10:24:12.092798');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (63, 'sites', '0001_initial', '2022-04-04 10:24:12.096724');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (64, 'sites', '0002_alter_domain_unique', '2022-04-04 10:24:12.100160');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (65, 'user_settings', '0001_initial', '2022-04-04 10:24:12.124884');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (66, 'user_settings', '0002_auto_20191104_1600', '2022-04-04 10:24:12.152235');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (67, 'user_settings', '0003_auto_20191108_1659', '2022-04-04 10:24:12.216418');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (68, 'user_settings', '0004_auto_20191117_2349', '2022-04-04 10:24:12.224106');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (69, 'user_settings', '0005_auto_20191212_1114', '2022-04-04 10:24:12.243743');
INSERT INTO bk_user.django_migrations (id, app, name, applied) VALUES (70, 'user_settings', '0006_auto_20200429_1540', '2022-04-04 10:24:12.261403');
