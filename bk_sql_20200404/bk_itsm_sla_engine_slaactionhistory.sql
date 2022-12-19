create table sla_engine_slaactionhistory
(
    id            int auto_increment
        primary key,
    task_id       int          not null,
    status        varchar(255) not null,
    action_type   varchar(255) not null,
    action_detail longtext     not null,
    create_time   datetime(6)  not null,
    `condition`   longtext     not null
);

create index sla_engine_slaactionhistory_task_id_e4eab21c
    on sla_engine_slaactionhistory (task_id);

