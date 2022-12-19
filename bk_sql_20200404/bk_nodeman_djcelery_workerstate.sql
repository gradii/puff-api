create table djcelery_workerstate
(
    id             int auto_increment
        primary key,
    hostname       varchar(255) not null,
    last_heartbeat datetime(6)  null,
    constraint hostname
        unique (hostname)
);

create index djcelery_workerstate_last_heartbeat_4539b544
    on djcelery_workerstate (last_heartbeat);

