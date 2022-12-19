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

INSERT INTO bk_user.django_celery_beat_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id, solar_id, one_off, start_time, priority, headers, clocked_id) VALUES (1, 'celery.backend_cleanup', 'celery.backend_cleanup', '[]', '{}', null, null, null, null, 1, null, 0, '2022-04-04 10:24:15.149954', '', 1, null, null, 0, null, null, '{}', null);
