create table pipeline_web_core_nodeininstance
(
    id          int auto_increment
        primary key,
    node_id     varchar(32)  not null,
    node_type   varchar(100) not null,
    create_time datetime(6)  not null,
    edit_time   datetime(6)  not null,
    instance_id varchar(32)  not null,
    constraint pipeline_web_core_nodein_node_id_instance_id_7d27cdf6_uniq
        unique (node_id, instance_id)
);

create index pipeline_web_core_nodeininstance_instance_id_aa48e655
    on pipeline_web_core_nodeininstance (instance_id);

