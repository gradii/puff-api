create table account_bkuser_groups
(
    id        int auto_increment
        primary key,
    bkuser_id int not null,
    group_id  int not null,
    constraint account_bkuser_groups_bkuser_id_group_id_cc136174_uniq
        unique (bkuser_id, group_id),
    constraint account_bkuser_groups_bkuser_id_4ab47c5e_fk_account_bkuser_id
        foreign key (bkuser_id) references account_bkuser (id),
    constraint account_bkuser_groups_group_id_3efea5e4_fk_auth_group_id
        foreign key (group_id) references auth_group (id)
);

