create table core_staffgroupset
(
    id         int auto_increment
        primary key,
    name       varchar(255) not null,
    members    longtext     null,
    is_deleted tinyint(1)   not null,
    project_id int          not null
);

