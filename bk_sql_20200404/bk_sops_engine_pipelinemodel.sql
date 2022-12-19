create table engine_pipelinemodel
(
    id         varchar(32)  not null
        primary key,
    process_id varchar(32)  null,
    priority   int          not null,
    queue      varchar(512) not null,
    constraint engine_pipelinemodel_process_id_4b6eb2c9_fk_engine_pi
        foreign key (process_id) references engine_pipelineprocess (id)
);

