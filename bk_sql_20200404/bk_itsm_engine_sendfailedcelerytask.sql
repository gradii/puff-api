create table engine_sendfailedcelerytask
(
    id           bigint auto_increment
        primary key,
    name         varchar(1024) not null,
    kwargs       longtext      not null,
    type         int           not null,
    extra_kwargs longtext      not null,
    exec_trace   longtext      not null,
    created_at   datetime(6)   not null
);

