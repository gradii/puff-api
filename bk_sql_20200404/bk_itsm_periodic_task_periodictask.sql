create table periodic_task_periodictask
(
    id              int auto_increment
        primary key,
    name            varchar(64)  not null,
    cron            varchar(128) not null,
    total_run_count int unsigned not null,
    last_run_at     datetime(6)  null,
    creator         varchar(32)  not null,
    extra_info      longblob     null,
    celery_task_id  int          null,
    snapshot_id     int          not null,
    template_id     varchar(32)  null,
    priority        int          not null,
    queue           varchar(512) not null,
    constraint periodic_task_period_celery_task_id_83366d9f_fk_periodic_
        foreign key (celery_task_id) references periodic_task_djceleryperiodictask (id),
    constraint periodic_task_period_snapshot_id_785df0fb_fk_pipeline_
        foreign key (snapshot_id) references pipeline_snapshot (id),
    constraint periodic_task_period_template_id_b829e08b_fk_pipeline_
        foreign key (template_id) references pipeline_pipelinetemplate (template_id)
);

