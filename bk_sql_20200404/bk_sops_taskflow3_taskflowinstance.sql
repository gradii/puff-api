create table taskflow3_taskflowinstance
(
    id                   int auto_increment
        primary key,
    category             varchar(255) not null,
    template_id          varchar(255) not null,
    create_method        varchar(30)  not null,
    create_info          varchar(255) not null,
    flow_type            varchar(255) not null,
    current_flow         varchar(255) not null,
    is_deleted           tinyint(1)   not null,
    pipeline_instance_id int          null,
    template_source      varchar(32)  not null,
    project_id           int          null,
    constraint taskflow3_taskflowin_pipeline_instance_id_5322afd2_fk_pipeline_
        foreign key (pipeline_instance_id) references pipeline_pipelineinstance (id),
    constraint taskflow3_taskflowin_project_id_3c18b071_fk_core_proj
        foreign key (project_id) references core_project (id)
);

