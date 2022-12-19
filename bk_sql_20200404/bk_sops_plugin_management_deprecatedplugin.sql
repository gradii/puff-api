create table plugin_management_deprecatedplugin
(
    id      int auto_increment
        primary key,
    code    varchar(255) not null,
    version varchar(64)  not null,
    type    int unsigned not null,
    phase   int unsigned not null
);

