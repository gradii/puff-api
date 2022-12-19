create table long_task_subtaskstate
(
    id        int auto_increment
        primary key,
    task_id   int         not null,
    celery_id varchar(36) not null,
    `index`   int         not null,
    status    int         not null,
    exception longtext    not null
);

