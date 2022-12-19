create table account_bkuser_user_permissions
(
    id            int auto_increment
        primary key,
    bkuser_id     int not null,
    permission_id int not null,
    constraint account_bkuser_user_perm_bkuser_id_permission_id_07b42055_uniq
        unique (bkuser_id, permission_id),
    constraint account_bkuser_user__bkuser_id_8b8b07f6_fk_account_b
        foreign key (bkuser_id) references account_bkuser (id),
    constraint account_bkuser_user__permission_id_c0c3c2f7_fk_auth_perm
        foreign key (permission_id) references auth_permission (id)
);

