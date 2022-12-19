create table account_verifyinfo
(
    id         int auto_increment
        primary key,
    code       varchar(6)  not null,
    updated_at datetime(6) not null,
    user_id    int         not null,
    constraint account_verifyinfo_user_id_85128af2_fk_account_user_id
        foreign key (user_id) references account_user (id)
);

