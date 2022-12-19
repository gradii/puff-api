create table core_environmentvariables
(
    id    int auto_increment
        primary key,
    `key` varchar(255)  not null,
    name  varchar(255)  not null,
    value varchar(1000) not null,
    constraint `key`
        unique (`key`)
);

