create table account_user
(
    id           int auto_increment
        primary key,
    password     varchar(128) not null,
    last_login   datetime(6)  null,
    is_superuser tinyint(1)   not null,
    username     varchar(64)  not null,
    nickname     varchar(64)  not null,
    is_staff     tinyint(1)   not null,
    is_active    tinyint(1)   not null,
    date_joined  datetime(6)  not null,
    constraint username
        unique (username)
);

INSERT INTO bk_iam.account_user (id, password, last_login, is_superuser, username, nickname, is_staff, is_active, date_joined) VALUES (1, '', '2022-04-04 10:28:13.822012', 1, 'admin', '', 1, 1, '2022-04-04 10:28:13.444467');
INSERT INTO bk_iam.account_user (id, password, last_login, is_superuser, username, nickname, is_staff, is_active, date_joined) VALUES (2, '', null, 0, 'bk__unverified_user', '', 0, 1, '2022-04-04 10:29:35.403643');
