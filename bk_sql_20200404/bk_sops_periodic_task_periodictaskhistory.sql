create table periodic_task_periodictaskhistory
(
    id                   int auto_increment
        primary key,
    ex_data              longtext     not null,
    start_at             datetime(6)  not null,
    start_success        tinyint(1)   not null,
    periodic_task_id     int          null,
    pipeline_instance_id varchar(32)  null,
    priority             int          not null,
    queue                varchar(512) not null,
    constraint periodic_task_period_periodic_task_id_3f5c51d8_fk_periodic_
        foreign key (periodic_task_id) references periodic_task_periodictask (id),
    constraint periodic_task_period_pipeline_instance_id_e229764c_fk_pipeline_
        foreign key (pipeline_instance_id) references pipeline_pipelineinstance (instance_id)
);

