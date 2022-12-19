create table engine_data
(
    id      varchar(32) not null
        primary key,
    inputs  longblob    not null,
    outputs longblob    not null,
    ex_data longblob    not null
);

