create table djcelery_periodictask
(
    id              int auto_increment
        primary key,
    name            varchar(200) not null,
    task            varchar(200) not null,
    args            longtext     not null,
    kwargs          longtext     not null,
    queue           varchar(200) null,
    exchange        varchar(200) null,
    routing_key     varchar(200) null,
    expires         datetime(6)  null,
    enabled         tinyint(1)   not null,
    last_run_at     datetime(6)  null,
    total_run_count int unsigned not null,
    date_changed    datetime(6)  not null,
    description     longtext     not null,
    crontab_id      int          null,
    interval_id     int          null,
    constraint name
        unique (name),
    constraint djcelery_periodictas_crontab_id_75609bab_fk_djcelery_
        foreign key (crontab_id) references djcelery_crontabschedule (id),
    constraint djcelery_periodictas_interval_id_b426ab02_fk_djcelery_
        foreign key (interval_id) references djcelery_intervalschedule (id)
);

INSERT INTO bk_iam.djcelery_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id) VALUES (1, 'celery.backend_cleanup', 'celery.backend_cleanup', '[]', '{}', null, null, null, null, 1, null, 0, '2022-04-04 10:27:38.290135', '', 1, null);
INSERT INTO bk_iam.djcelery_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id) VALUES (2, 'periodic_sync_organization', 'backend.apps.organization.tasks.sync_organization', '[]', '{}', null, null, null, null, 1, null, 0, '2022-04-04 10:27:38.293915', '', 2, null);
INSERT INTO bk_iam.djcelery_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id) VALUES (3, 'periodic_sync_new_users', 'backend.apps.organization.tasks.sync_new_users', '[]', '{}', null, null, null, null, 1, '2022-04-04 12:23:00.000615', 116, '2022-04-04 12:23:44.964661', '', 3, null);
INSERT INTO bk_iam.djcelery_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id) VALUES (4, 'periodic_sync_system_manager', 'backend.apps.role.tasks.sync_system_manager', '[]', '{}', null, null, null, null, 1, '2022-04-04 12:20:00.001624', 23, '2022-04-04 12:20:44.959819', '', 4, null);
INSERT INTO bk_iam.djcelery_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id) VALUES (5, 'periodic_check_or_update_application_status', 'backend.apps.application.tasks.check_or_update_application_status', '[]', '{}', null, null, null, null, 1, '2022-04-04 12:00:00.005448', 4, '2022-04-04 12:02:19.990913', '', 5, null);
INSERT INTO bk_iam.djcelery_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id) VALUES (6, 'periodic_user_group_policy_expire_remind', 'backend.apps.user.tasks.user_group_policy_expire_remind', '[]', '{}', null, null, null, null, 1, null, 0, '2022-04-04 10:27:38.306245', '', 6, null);
INSERT INTO bk_iam.djcelery_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id) VALUES (7, 'periodic_role_group_expire_remind', 'backend.apps.role.tasks.role_group_expire_remind', '[]', '{}', null, null, null, null, 1, null, 0, '2022-04-04 10:27:38.309357', '', 6, null);
INSERT INTO bk_iam.djcelery_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id) VALUES (8, 'periodic_user_expired_policy_cleanup', 'backend.apps.user.tasks.user_cleanup_expired_policy', '[]', '{}', null, null, null, null, 1, null, 0, '2022-04-04 10:27:38.312835', '', 6, null);
INSERT INTO bk_iam.djcelery_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id) VALUES (9, 'periodic_group_expired_member_cleanup', 'backend.apps.group.tasks.group_cleanup_expired_member', '[]', '{}', null, null, null, null, 1, null, 0, '2022-04-04 10:27:38.319639', '', 6, null);
INSERT INTO bk_iam.djcelery_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id) VALUES (10, 'periodic_pre_create_audit_model', 'backend.audit.tasks.pre_create_audit_model', '[]', '{}', null, null, null, null, 1, null, 0, '2022-04-04 10:27:38.322683', '', 7, null);
INSERT INTO bk_iam.djcelery_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id) VALUES (11, 'periodic_generate_action_aggregate', 'backend.apps.action.tasks.generate_action_aggregate', '[]', '{}', null, null, null, null, 1, null, 0, '2022-04-04 10:27:38.325748', '', 8, null);
INSERT INTO bk_iam.djcelery_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id) VALUES (12, 'periodic_execute_model_change_event', 'backend.apps.policy.tasks.execute_model_change_event', '[]', '{}', null, null, null, null, 1, '2022-04-04 12:00:00.006779', 4, '2022-04-04 12:02:19.994035', '', 5, null);
