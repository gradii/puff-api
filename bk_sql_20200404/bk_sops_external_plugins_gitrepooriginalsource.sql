create table external_plugins_gitrepooriginalsource
(
    id               int auto_increment
        primary key,
    type             varchar(64)  not null,
    base_source_id   int          null,
    name             varchar(128) not null,
    `desc`           longtext     not null,
    packages         longtext     not null,
    repo_address     longtext     not null,
    repo_raw_address longtext     not null,
    branch           varchar(128) not null
);

