create table account_user_user_permissions
(
    id            int auto_increment
        primary key,
    user_id       int not null,
    permission_id int not null,
    constraint account_user_user_permis_user_id_permission_id_48bdd28b_uniq
        unique (user_id, permission_id),
    constraint account_user_user_pe_permission_id_66c44191_fk_auth_perm
        foreign key (permission_id) references auth_permission (id),
    constraint account_user_user_pe_user_id_cc42d270_fk_account_u
        foreign key (user_id) references account_user (id)
);

