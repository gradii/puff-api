create table engine_multicallbackdata
(
    id          bigint auto_increment
        primary key,
    schedule_id varchar(64) not null,
    data        longblob    not null
);

