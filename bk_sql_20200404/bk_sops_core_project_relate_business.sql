create table core_project_relate_business
(
    id          int auto_increment
        primary key,
    project_id  int not null,
    business_id int not null,
    constraint core_project_relate_busi_project_id_business_id_712688c7_uniq
        unique (project_id, business_id),
    constraint core_project_relate__business_id_b46d9a39_fk_core_busi
        foreign key (business_id) references core_business (id),
    constraint core_project_relate__project_id_bbc7ad31_fk_core_proj
        foreign key (project_id) references core_project (id)
);

