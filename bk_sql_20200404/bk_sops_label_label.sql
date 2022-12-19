create table label_label
(
    id          int auto_increment
        primary key,
    name        varchar(255) not null,
    creator     varchar(255) not null,
    project_id  int          not null,
    is_default  tinyint(1)   not null,
    color       varchar(7)   not null,
    description varchar(255) null,
    constraint label_label_project_id_name_475768a3_uniq
        unique (project_id, name)
);

create index label_label_name_19b8650e
    on label_label (name);

