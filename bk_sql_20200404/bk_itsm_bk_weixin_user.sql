create table bk_weixin_user
(
    id          int auto_increment
        primary key,
    openid      varchar(128) null,
    nickname    varchar(127) not null,
    gender      varchar(15)  not null,
    country     varchar(63)  not null,
    province    varchar(63)  not null,
    city        varchar(63)  not null,
    avatar_url  varchar(255) not null,
    date_joined datetime(6)  not null,
    email       varchar(128) not null,
    mobile      varchar(11)  not null,
    qr_code     varchar(128) not null,
    userid      varchar(128) null,
    constraint bk_weixin_user_openid_userid_8bcd8788_uniq
        unique (openid, userid)
);

