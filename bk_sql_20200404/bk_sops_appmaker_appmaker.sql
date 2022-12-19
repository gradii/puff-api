create table appmaker_appmaker
(
    id                 int auto_increment
        primary key,
    name               varchar(255) not null,
    code               varchar(255) not null,
    info               varchar(255) null,
    `desc`             varchar(255) null,
    logo_url           longtext     not null,
    link               varchar(255) not null,
    creator            varchar(100) not null,
    create_time        datetime(6)  not null,
    editor             varchar(100) null,
    is_deleted         tinyint(1)   not null,
    edit_time          datetime(6)  null,
    task_template_id   int          not null,
    template_scheme_id varchar(100) not null,
    project_id         int          null,
    category           varchar(255) not null,
    constraint appmaker_appmaker_project_id_b8846ac9_fk_core_project_id
        foreign key (project_id) references core_project (id),
    constraint appmaker_appmaker_task_template_id_291f068a_fk_tasktmpl3
        foreign key (task_template_id) references tasktmpl3_tasktemplate (id)
);

