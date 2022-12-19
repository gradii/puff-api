create table sla_engine_slaeventlog
(
    id          int auto_increment
        primary key,
    task_id     int          not null,
    priority    varchar(255) not null,
    event_type  varchar(255) not null,
    is_archived tinyint(1)   not null,
    tick_flag   varchar(255) not null,
    create_time datetime(6)  not null
);

create index sla_engine_slaeventlog_task_id_8f8bb400
    on sla_engine_slaeventlog (task_id);

