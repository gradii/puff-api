create table organization_department
(
    created_time           datetime(6)  not null,
    updated_time           datetime(6)  not null,
    id                     int          not null
        primary key,
    name                   varchar(255) not null,
    category_id            int          null,
    `order`                int          not null,
    ancestors              longtext     not null,
    child_count            int          not null,
    member_count           int          not null,
    recursive_member_count int          not null,
    lft                    int unsigned not null,
    rght                   int unsigned not null,
    tree_id                int unsigned not null,
    level                  int unsigned not null,
    parent_id              int          null,
    constraint organization_departm_parent_id_26506ab2_fk_organizat
        foreign key (parent_id) references organization_department (id)
);

create index organization_department_parent_id_26506ab2
    on organization_department (parent_id);

create index organization_department_tree_id_c9c30344
    on organization_department (tree_id);

