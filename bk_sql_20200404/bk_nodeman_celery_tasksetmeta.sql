create table celery_tasksetmeta
(
    id         int auto_increment
        primary key,
    taskset_id varchar(255) not null,
    result     longtext     not null,
    date_done  datetime(6)  not null,
    hidden     tinyint(1)   not null,
    constraint taskset_id
        unique (taskset_id)
);

create index celery_tasksetmeta_hidden_593cfc24
    on celery_tasksetmeta (hidden);

