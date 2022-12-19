create table celery_taskmeta
(
    id        int auto_increment
        primary key,
    task_id   varchar(255) not null,
    status    varchar(50)  not null,
    result    longtext     null,
    date_done datetime(6)  not null,
    traceback longtext     null,
    hidden    tinyint(1)   not null,
    meta      longtext     null,
    constraint task_id
        unique (task_id)
);

create index celery_taskmeta_hidden_23fd02dc
    on celery_taskmeta (hidden);

