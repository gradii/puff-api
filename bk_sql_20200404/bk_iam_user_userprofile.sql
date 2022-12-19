create table user_userprofile
(
    id           int auto_increment
        primary key,
    creator      varchar(64)  not null,
    updater      varchar(64)  not null,
    created_time datetime(6)  not null,
    updated_time datetime(6)  not null,
    username     varchar(255) not null,
    newbie       longtext     not null,
    constraint username
        unique (username)
);

