create table django_celery_results_taskresult
(
    id               int auto_increment
        primary key,
    task_id          varchar(255) not null,
    status           varchar(50)  not null,
    content_type     varchar(128) not null,
    content_encoding varchar(64)  not null,
    result           longtext     null,
    date_done        datetime(6)  not null,
    traceback        longtext     null,
    meta             longtext     null,
    task_args        longtext     null,
    task_kwargs      longtext     null,
    task_name        varchar(255) null,
    worker           varchar(100) null,
    date_created     datetime(6)  not null,
    constraint task_id
        unique (task_id)
);

create index django_celery_results_taskresult_date_created_099f3424
    on django_celery_results_taskresult (date_created);

create index django_celery_results_taskresult_date_done_49edada6
    on django_celery_results_taskresult (date_done);

create index django_celery_results_taskresult_status_cbbed23a
    on django_celery_results_taskresult (status);

create index django_celery_results_taskresult_task_name_90987df3
    on django_celery_results_taskresult (task_name);

create index django_celery_results_taskresult_worker_f8711389
    on django_celery_results_taskresult (worker);

