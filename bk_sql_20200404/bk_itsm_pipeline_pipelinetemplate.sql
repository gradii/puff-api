create table pipeline_pipelinetemplate
(
    id             int auto_increment
        primary key,
    template_id    varchar(32)  not null,
    name           varchar(128) not null,
    create_time    datetime(6)  not null,
    creator        varchar(32)  not null,
    description    longtext     null,
    editor         varchar(32)  null,
    edit_time      datetime(6)  not null,
    is_deleted     tinyint(1)   not null,
    snapshot_id    int          not null,
    has_subprocess tinyint(1)   not null,
    constraint template_id
        unique (template_id),
    constraint pipeline_pipelinetem_snapshot_id_b951a2e9_fk_pipeline_
        foreign key (snapshot_id) references pipeline_snapshot (id)
);

