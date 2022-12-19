create table external_plugins_cachepackagesource
(
    id             int auto_increment
        primary key,
    type           varchar(64) not null,
    base_source_id int         null,
    `desc`         longtext    not null
);

