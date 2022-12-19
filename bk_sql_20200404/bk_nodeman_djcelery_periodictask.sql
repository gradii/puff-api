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

