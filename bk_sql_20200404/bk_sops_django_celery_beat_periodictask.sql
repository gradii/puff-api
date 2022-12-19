create table django_celery_beat_periodictask
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
    solar_id        int          null,
    one_off         tinyint(1)   not null,
    start_time      datetime(6)  null,
    priority        int unsigned null,
    headers         longtext     not null,
    clocked_id      int          null,
    expire_seconds  int unsigned null,
    constraint name
        unique (name),
    constraint django_celery_beat_p_clocked_id_47a69f82_fk_django_ce
        foreign key (clocked_id) references django_celery_beat_clockedschedule (id),
    constraint django_celery_beat_p_crontab_id_d3cba168_fk_django_ce
        foreign key (crontab_id) references django_celery_beat_crontabschedule (id),
    constraint django_celery_beat_p_interval_id_a8ca27da_fk_django_ce
        foreign key (interval_id) references django_celery_beat_intervalschedule (id),
    constraint django_celery_beat_p_solar_id_a87ce72c_fk_django_ce
        foreign key (solar_id) references django_celery_beat_solarschedule (id)
);

INSERT INTO bk_sops.django_celery_beat_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id, solar_id, one_off, start_time, priority, headers, clocked_id, expire_seconds) VALUES (1, 'celery.backend_cleanup', 'celery.backend_cleanup', '[]', '{}', null, null, null, null, 1, null, 0, '2022-04-04 10:38:19.062691', '', 1, null, null, 0, null, null, '{}', null, 43200);
INSERT INTO bk_sops.django_celery_beat_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id, solar_id, one_off, start_time, priority, headers, clocked_id, expire_seconds) VALUES (2, 'pipeline.log.tasks.clean_expired_log', 'pipeline.log.tasks.clean_expired_log', '[]', '{}', null, null, null, null, 1, null, 0, '2022-04-04 10:38:19.107616', '', 2, null, null, 0, null, null, '{}', null, null);
INSERT INTO bk_sops.django_celery_beat_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id, solar_id, one_off, start_time, priority, headers, clocked_id, expire_seconds) VALUES (3, 'gcloud.core.tasks.cmdb_business_sync_task', 'gcloud.core.tasks.cmdb_business_sync_task', '[]', '{}', null, null, null, null, 1, '2022-04-04 12:26:00.000269', 54, '2022-04-04 12:27:55.168956', '', 3, null, null, 0, null, null, '{}', null, null);
INSERT INTO bk_sops.django_celery_beat_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id, solar_id, one_off, start_time, priority, headers, clocked_id, expire_seconds) VALUES (4, 'pipeline.engine.tasks.heal_zombie_process', 'pipeline.engine.tasks.heal_zombie_process', '[]', '{}', null, null, null, null, 1, '2022-04-04 12:20:00.000269', 11, '2022-04-04 12:21:50.163072', '', 4, null, null, 0, null, null, '{}', null, null);
