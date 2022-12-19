create table engine_subprocessrelationship
(
    id            bigint auto_increment
        primary key,
    subprocess_id varchar(32) not null,
    process_id    varchar(32) not null
);

create index engine_subprocessrelationship_subprocess_id_5498c53e
    on engine_subprocessrelationship (subprocess_id);

