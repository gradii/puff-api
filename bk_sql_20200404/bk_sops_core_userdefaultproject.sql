create table core_userdefaultproject
(
    id                 int auto_increment
        primary key,
    username           varchar(255) not null,
    default_project_id int          not null,
    constraint username
        unique (username),
    constraint core_userdefaultproj_default_project_id_bd5eca30_fk_core_proj
        foreign key (default_project_id) references core_project (id)
);

