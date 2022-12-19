create table variable_framework_variablemodel
(
    id     int auto_increment
        primary key,
    code   varchar(255) not null,
    status tinyint(1)   not null,
    constraint code
        unique (code)
);

