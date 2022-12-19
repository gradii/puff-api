create table core_projectcounter
(
    id         int auto_increment
        primary key,
    username   varchar(255) not null,
    count      int          not null,
    project_id int          not null,
    constraint core_projectcounter_project_id_5ea66e56_fk_core_project_id
        foreign key (project_id) references core_project (id)
);

