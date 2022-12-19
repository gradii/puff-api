create table periodictask_periodictask
(
    id              int auto_increment
        primary key,
    template_id     varchar(255) not null,
    task_id         int          not null,
    project_id      int          null,
    template_source varchar(32)  not null,
    constraint periodictask_periodi_task_id_baf1b245_fk_periodic_
        foreign key (task_id) references periodic_task_periodictask (id),
    constraint periodictask_periodictask_project_id_d32a8f57_fk_core_project_id
        foreign key (project_id) references core_project (id)
);

