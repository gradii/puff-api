create table pipeline_external_plugins_s3source
(
    id              int auto_increment
        primary key,
    name            varchar(128) not null,
    from_config     tinyint(1)   not null,
    packages        longtext     not null,
    service_address longtext     not null,
    bucket          longtext     not null,
    access_key      longtext     not null,
    secret_key      longtext     not null,
    source_dir      longtext     not null,
    constraint name
        unique (name)
);

