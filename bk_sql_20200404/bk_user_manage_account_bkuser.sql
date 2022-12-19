create table account_bkuser
(
    id           int auto_increment
        primary key,
    password     varchar(128) not null,
    last_login   datetime(6)  null,
    is_superuser tinyint(1)   not null,
    username     varchar(128) not null,
    chname       varchar(254) not null,
    company      varchar(128) not null,
    qq           varchar(32)  not null,
    phone        varchar(64)  not null,
    email        varchar(254) not null,
    is_staff     tinyint(1)   not null,
    date_joined  datetime(6)  not null,
    constraint username
        unique (username)
);

INSERT INTO bk_user_manage.account_bkuser (id, password, last_login, is_superuser, username, chname, company, qq, phone, email, is_staff, date_joined) VALUES (1, '', '2022-04-04 19:56:13.562379', 1, 'admin', '', '', '', '', '', 1, '2022-04-04 18:29:14.912913');
