create table engine_pipelineprocess
(
    id               varchar(32) not null
        primary key,
    root_pipeline_id varchar(32) not null,
    current_node_id  varchar(32) not null,
    destination_id   varchar(32) not null,
    parent_id        varchar(32) not null,
    ack_num          int         not null,
    need_ack         int         not null,
    is_alive         tinyint(1)  not null,
    is_sleep         tinyint(1)  not null,
    snapshot_id      bigint      null,
    is_frozen        tinyint(1)  not null,
    constraint engine_pipelineproce_snapshot_id_19bd7d81_fk_engine_pr
        foreign key (snapshot_id) references engine_processsnapshot (id)
);

create index engine_pipelineprocess_current_node_id_8b05c275
    on engine_pipelineprocess (current_node_id);

create index engine_pipelineprocess_is_alive_a58e9ef9
    on engine_pipelineprocess (is_alive);

create index engine_pipelineprocess_is_frozen_ec43266a
    on engine_pipelineprocess (is_frozen);

create index engine_pipelineprocess_is_sleep_4cd140e1
    on engine_pipelineprocess (is_sleep);

create index engine_pipelineprocess_root_pipeline_id_6683f57c
    on engine_pipelineprocess (root_pipeline_id);

