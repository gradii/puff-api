create table bk_weixin_user
(
    id          int auto_increment
        primary key,
    userid      varchar(128) not null,
    name        varchar(127) not null,
    gender      varchar(15)  not null,
    country     varchar(63)  not null,
    province    varchar(63)  not null,
    city        varchar(63)  not null,
    avatar_url  varchar(255) not null,
    date_joined datetime(6)  not null,
    constraint openid
        unique (userid)
);

