create table pipeline_pipelineinstance
(
    id                    int auto_increment
        primary key,
    instance_id           varchar(32)  not null,
    name                  varchar(128) not null,
    creator               varchar(32)  not null,
    create_time           datetime(6)  not null,
    executor              varchar(32)  not null,
    start_time            datetime(6)  null,
    finish_time           datetime(6)  null,
    description           longtext     not null,
    is_started            tinyint(1)   not null,
    is_finished           tinyint(1)   not null,
    is_deleted            tinyint(1)   not null,
    execution_snapshot_id int          null,
    snapshot_id           int          null,
    template_id           int          null,
    tree_info_id          int          null,
    is_revoked            tinyint(1)   not null,
    constraint instance_id
        unique (instance_id),
    constraint pipeline_pipelineins_execution_snapshot_i_2ac08ec7_fk_pipeline_
        foreign key (execution_snapshot_id) references pipeline_snapshot (id),
    constraint pipeline_pipelineins_snapshot_id_f8c3289b_fk_pipeline_
        foreign key (snapshot_id) references pipeline_snapshot (id),
    constraint pipeline_pipelineins_template_id_cc4fedf1_fk_pipeline_
        foreign key (template_id) references pipeline_pipelinetemplate (id),
    constraint pipeline_pipelineins_tree_info_id_9fadc892_fk_pipeline_
        foreign key (tree_info_id) references pipeline_treeinfo (id)
);

