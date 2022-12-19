create table nyt_settings
(
    id         int auto_increment
        primary key,
    user_id    int        not null,
    `interval` smallint   not null,
    is_default tinyint(1) not null,
    constraint nyt_settings_user_id_1fad6d98_fk_account_user_id
        foreign key (user_id) references account_user (id)
);

