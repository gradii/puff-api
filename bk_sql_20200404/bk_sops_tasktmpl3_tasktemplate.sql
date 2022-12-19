create table tasktmpl3_tasktemplate
(
    id                   int auto_increment
        primary key,
    category             varchar(255) not null,
    notify_type          varchar(128) not null,
    notify_receivers     longtext     not null,
    time_out             int          not null,
    is_deleted           tinyint(1)   not null,
    pipeline_template_id varchar(32)  null,
    project_id           int          null,
    executor_proxy       varchar(255) not null,
    constraint tasktmpl3_tasktempla_pipeline_template_id_8798033b_fk_pipeline_
        foreign key (pipeline_template_id) references pipeline_pipelinetemplate (template_id),
    constraint tasktmpl3_tasktemplate_project_id_6846b518_fk_core_project_id
        foreign key (project_id) references core_project (id)
);

