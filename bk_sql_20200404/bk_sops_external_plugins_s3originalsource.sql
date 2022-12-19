create table external_plugins_s3originalsource
(
    id              int auto_increment
        primary key,
    type            varchar(64)  not null,
    base_source_id  int          null,
    name            varchar(128) not null,
    `desc`          longtext     not null,
    packages        longtext     not null,
    service_address longtext     not null,
    bucket          longtext     not null,
    access_key      longtext     not null,
    secret_key      longtext     not null,
    source_dir      longtext     not null
);

