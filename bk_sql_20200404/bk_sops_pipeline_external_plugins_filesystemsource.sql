create table pipeline_external_plugins_filesystemsource
(
    id          int auto_increment
        primary key,
    name        varchar(128) not null,
    from_config tinyint(1)   not null,
    packages    longtext     not null,
    path        longtext     not null,
    constraint name
        unique (name)
);

