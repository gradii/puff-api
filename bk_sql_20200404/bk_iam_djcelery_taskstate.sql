create table djcelery_taskstate
(
    id        int auto_increment
        primary key,
    state     varchar(64)  not null,
    task_id   varchar(36)  not null,
    name      varchar(200) null,
    tstamp    datetime(6)  not null,
    args      longtext     null,
    kwargs    longtext     null,
    eta       datetime(6)  null,
    expires   datetime(6)  null,
    result    longtext     null,
    traceback longtext     null,
    runtime   double       null,
    retries   int          not null,
    hidden    tinyint(1)   not null,
    worker_id int          null,
    constraint task_id
        unique (task_id),
    constraint djcelery_taskstate_worker_id_f7f57a05_fk_djcelery_workerstate_id
        foreign key (worker_id) references djcelery_workerstate (id)
);

create index djcelery_taskstate_hidden_c3905e57
    on djcelery_taskstate (hidden);

create index djcelery_taskstate_name_8af9eded
    on djcelery_taskstate (name);

create index djcelery_taskstate_state_53543be4
    on djcelery_taskstate (state);

create index djcelery_taskstate_tstamp_4c3f93a1
    on djcelery_taskstate (tstamp);

