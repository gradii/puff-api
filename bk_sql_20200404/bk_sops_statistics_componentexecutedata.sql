create table statistics_componentexecutedata
(
    id               int auto_increment
        primary key,
    component_code   varchar(255) not null,
    instance_id      varchar(32)  not null,
    node_id          varchar(32)  not null,
    is_sub           tinyint(1)   not null,
    subprocess_stack longtext     not null,
    started_time     datetime(6)  not null,
    archived_time    datetime(6)  null,
    elapsed_time     int          null,
    status           tinyint(1)   not null,
    is_skip          tinyint(1)   not null,
    is_retry         tinyint(1)   not null,
    version          varchar(255) not null
);

create index statistics_componentexecutedata_component_code_0833cc5b
    on statistics_componentexecutedata (component_code);

create index statistics_componentexecutedata_instance_id_29e5aef9
    on statistics_componentexecutedata (instance_id);

