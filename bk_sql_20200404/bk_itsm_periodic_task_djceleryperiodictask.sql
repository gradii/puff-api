create table periodic_task_djceleryperiodictask
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
    constraint periodic_task_djcele_crontab_id_5b2cf80e_fk_periodic_
        foreign key (crontab_id) references periodic_task_crontabschedule (id),
    constraint periodic_task_djcele_interval_id_8732f06b_fk_periodic_
        foreign key (interval_id) references periodic_task_intervalschedule (id)
);

INSERT INTO bk_itsm.periodic_task_djceleryperiodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id) VALUES (1, 'celery.backend_cleanup', 'celery.backend_cleanup', '[]', '{}', null, null, null, null, 1, null, 0, '2022-04-04 18:29:42.231612', '', 1, null);
INSERT INTO bk_itsm.periodic_task_djceleryperiodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id) VALUES (2, 'itsm.task.tasks.sops_task_poller', 'itsm.task.tasks.sops_task_poller', '[]', '{}', null, null, null, null, 1, '2022-04-04 20:22:00.000376', 57, '2022-04-04 20:22:54.958072', '', 2, null);
INSERT INTO bk_itsm.periodic_task_djceleryperiodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id) VALUES (3, 'pipeline.engine.tasks.heal_zombie_process', 'pipeline.engine.tasks.heal_zombie_process', '[]', '{}', null, null, null, null, 1, '2022-04-04 20:20:00.003120', 12, '2022-04-04 20:22:54.954928', '', 3, null);
INSERT INTO bk_itsm.periodic_task_djceleryperiodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id) VALUES (4, 'itsm.ticket.tasks.weekly_statical', 'itsm.ticket.tasks.weekly_statical', '[]', '{}', null, null, null, null, 1, null, 0, '2022-04-04 18:29:42.251517', '', 4, null);
INSERT INTO bk_itsm.periodic_task_djceleryperiodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id) VALUES (5, 'itsm.sla_engine.monitor.sla_metric', 'itsm.sla_engine.monitor.sla_metric', '[]', '{}', null, null, null, null, 1, '2022-04-04 20:22:00.001710', 113, '2022-04-04 20:22:54.956581', '', 5, null);
INSERT INTO bk_itsm.periodic_task_djceleryperiodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id) VALUES (6, 'pipeline.log.tasks.clean_expired_log', 'pipeline.log.tasks.clean_expired_log', '[]', '{}', null, null, null, null, 1, null, 0, '2022-04-04 18:29:42.259279', '', 6, null);
INSERT INTO bk_itsm.periodic_task_djceleryperiodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id) VALUES (7, 'itsm.ticket.tasks.auto_comment', 'itsm.ticket.tasks.auto_comment', '[]', '{}', null, null, null, null, 1, '2022-04-04 20:00:00.016285', 1, '2022-04-04 20:01:29.985270', '', 7, null);
INSERT INTO bk_itsm.periodic_task_djceleryperiodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id) VALUES (8, 'itsm.ticket.tasks.status_auto_transit', 'itsm.ticket.tasks.status_auto_transit', '[]', '{}', null, null, null, null, 1, '2022-04-04 20:22:00.002988', 113, '2022-04-04 20:22:54.959562', '', 5, null);
