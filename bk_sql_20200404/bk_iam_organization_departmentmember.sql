create table organization_departmentmember
(
    id            int auto_increment
        primary key,
    department_id int not null,
    user_id       int not null
);

create index organization_departmentmember_department_id_e7323ed1
    on organization_departmentmember (department_id);

create index organization_departmentmember_user_id_5067e532
    on organization_departmentmember (user_id);

