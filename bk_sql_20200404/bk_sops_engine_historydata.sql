create table engine_historydata
(
    id      bigint auto_increment
        primary key,
    inputs  longblob not null,
    outputs longblob not null,
    ex_data longblob not null
);

