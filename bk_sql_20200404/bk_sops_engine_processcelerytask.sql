create table engine_processcelerytask
(
    id             bigint auto_increment
        primary key,
    process_id     varchar(32) not null,
    celery_task_id varchar(40) not null,
    constraint process_id
        unique (process_id)
);

