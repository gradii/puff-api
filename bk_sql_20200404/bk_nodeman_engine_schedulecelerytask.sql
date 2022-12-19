create table engine_schedulecelerytask
(
    id             bigint auto_increment
        primary key,
    schedule_id    varchar(64) not null,
    celery_task_id varchar(40) not null,
    constraint schedule_id
        unique (schedule_id)
);

