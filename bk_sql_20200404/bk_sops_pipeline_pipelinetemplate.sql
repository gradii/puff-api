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

create index pipeline_pipelinetemplate_create_time_98d402cd
    on pipeline_pipelinetemplate (create_time);

create index pipeline_pipelinetemplate_edit_time_0eff9dbd
    on pipeline_pipelinetemplate (edit_time);

create index pipeline_pipelinetemplate_name_2665c288
    on pipeline_pipelinetemplate (name);

INSERT INTO bk_sops.pipeline_pipelinetemplate (id, template_id, name, create_time, creator, description, editor, edit_time, is_deleted, snapshot_id, has_subprocess) VALUES (1, 'n1f31559765f309a90a23f5ce90b8645', 'new20220404114629', '2022-04-04 11:47:09.937836', 'admin', '', 'admin', '2022-04-04 11:47:51.822749', 0, 3, 0);
