create table pipeline_external_plugins_gitreposource
(
    id               int auto_increment
        primary key,
    name             varchar(128) not null,
    from_config      tinyint(1)   not null,
    packages         longtext     not null,
    repo_raw_address longtext     not null,
    branch           varchar(128) not null,
    constraint name
        unique (name)
);

