create table core_businessgroupmembership
(
    id           int auto_increment
        primary key,
    date_created datetime(6) not null,
    business_id  int         not null,
    group_id     int         not null,
    constraint core_businessgroupmembership_business_id_group_id_734aa76b_uniq
        unique (business_id, group_id),
    constraint core_businessgroupme_business_id_33a124b9_fk_core_busi
        foreign key (business_id) references core_business (id),
    constraint core_businessgroupmembership_group_id_71cbc212_fk_auth_group_id
        foreign key (group_id) references auth_group (id)
);

