create table pipeline_snapshot
(
    id          int auto_increment
        primary key,
    md5sum      varchar(32) not null,
    create_time datetime(6) not null,
    data        longblob    null,
    constraint md5sum
        unique (md5sum)
);

