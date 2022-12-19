create table periodictask_periodictaskhistory
(
    id               int auto_increment
        primary key,
    ex_data          longtext    not null,
    start_at         datetime(6) not null,
    start_success    tinyint(1)  not null,
    flow_instance_id int         null,
    history_id       int         not null,
    task_id          int         not null,
    constraint periodictask_periodi_flow_instance_id_9be92389_fk_taskflow3
        foreign key (flow_instance_id) references taskflow3_taskflowinstance (id),
    constraint periodictask_periodi_history_id_0f4454f1_fk_periodic_
        foreign key (history_id) references periodic_task_periodictaskhistory (id),
    constraint periodictask_periodi_task_id_56c2a1c4_fk_periodict
        foreign key (task_id) references periodictask_periodictask (id)
);

