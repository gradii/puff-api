create table external_plugins_filesystemoriginalsource
(
    id             int auto_increment
        primary key,
    type           varchar(64)  not null,
    base_source_id int          null,
    name           varchar(128) not null,
    `desc`         longtext     not null,
    packages       longtext     not null,
    path           longtext     not null
);

