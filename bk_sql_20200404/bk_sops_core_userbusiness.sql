create table core_userbusiness
(
    id           int auto_increment
        primary key,
    user         varchar(255) not null,
    default_buss int          not null,
    constraint user
        unique (user)
);

