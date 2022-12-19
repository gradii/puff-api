create table account_user_property
(
    id      int auto_increment
        primary key,
    `key`   varchar(64) not null,
    value   longtext    not null,
    user_id int         not null,
    constraint account_user_property_user_id_key_652c804e_uniq
        unique (user_id, `key`),
    constraint account_user_property_user_id_f10c8a01_fk_account_user_id
        foreign key (user_id) references account_user (id)
);

