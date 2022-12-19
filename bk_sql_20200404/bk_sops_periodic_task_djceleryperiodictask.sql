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

