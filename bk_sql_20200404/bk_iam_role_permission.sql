create table role_permission
(
    id      int auto_increment
        primary key,
    name    varchar(64) not null,
    name_en varchar(64) not null,
    code    varchar(64) not null
);

