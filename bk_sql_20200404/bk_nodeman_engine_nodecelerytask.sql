create table engine_nodecelerytask
(
    id             bigint auto_increment
        primary key,
    node_id        varchar(32) not null,
    celery_task_id varchar(40) not null,
    constraint node_id
        unique (node_id)
);

