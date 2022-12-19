create table operate_record_taskoperaterecord
(
    id             int auto_increment
        primary key,
    operator       varchar(128) not null,
    operate_type   varchar(64)  not null,
    operate_source varchar(64)  not null,
    instance_id    int          not null,
    project_id     int          not null,
    operate_date   datetime(6)  not null,
    node_id        varchar(255) not null
);

create index operate_rec_instanc_d0dfad_idx
    on operate_record_taskoperaterecord (instance_id, node_id);

