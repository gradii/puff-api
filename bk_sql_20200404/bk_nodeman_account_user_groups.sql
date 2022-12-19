create table account_user_groups
(
    id       int auto_increment
        primary key,
    user_id  int not null,
    group_id int not null,
    constraint account_user_groups_user_id_group_id_4d09af3e_uniq
        unique (user_id, group_id),
    constraint account_user_groups_group_id_6c71f749_fk_auth_group_id
        foreign key (group_id) references auth_group (id),
    constraint account_user_groups_user_id_14345e7b_fk_account_user_id
        foreign key (user_id) references account_user (id)
);

