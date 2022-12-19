create table pipeline_templatescheme
(
    id          int auto_increment
        primary key,
    unique_id   varchar(97) not null,
    name        varchar(64) not null,
    edit_time   datetime(6) not null,
    data        longblob    not null,
    template_id int         not null,
    constraint unique_id
        unique (unique_id),
    constraint pipeline_templatesch_template_id_106274eb_fk_pipeline_
        foreign key (template_id) references pipeline_pipelinetemplate (id)
);

