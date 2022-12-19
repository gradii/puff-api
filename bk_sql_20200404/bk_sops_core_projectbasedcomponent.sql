create table core_projectbasedcomponent
(
    id             int auto_increment
        primary key,
    component_code varchar(255) not null,
    project_id     varchar(64)  not null
);

