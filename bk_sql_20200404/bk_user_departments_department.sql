create table departments_department
(
    id          int auto_increment
        primary key,
    create_time datetime(6)  not null,
    update_time datetime(6)  not null,
    name        varchar(255) not null,
    code        varchar(64)  null,
    `order`     int          not null,
    category_id int          null,
    lft         int unsigned not null,
    rght        int unsigned not null,
    tree_id     int unsigned not null,
    level       int unsigned not null,
    parent_id   int          null,
    enabled     tinyint(1)   not null,
    extras      longtext     not null,
    constraint code
        unique (code),
    constraint departments_departme_parent_id_cc8b848e_fk_departmen
        foreign key (parent_id) references departments_department (id)
);

create index departments_department_level_ac528bba
    on departments_department (level);

create index departments_department_lft_432ac99b
    on departments_department (lft);

create index departments_department_parent_id_cc8b848e
    on departments_department (parent_id);

create index departments_department_rght_5ed8cba5
    on departments_department (rght);

create index departments_department_tree_id_28cdc253
    on departments_department (tree_id);

INSERT INTO bk_user.departments_department (id, create_time, update_time, name, code, `order`, category_id, lft, rght, tree_id, level, parent_id, enabled, extras) VALUES (1, '2022-04-04 10:24:11.863346', '2022-04-04 10:24:11.863364', '总公司', null, 1, 1, 1, 2, 1, 0, null, 1, '{}');
