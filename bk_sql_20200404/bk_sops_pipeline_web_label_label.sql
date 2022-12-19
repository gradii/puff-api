create table pipeline_web_label_label
(
    id       int auto_increment
        primary key,
    code     varchar(255) not null,
    name     varchar(255) not null,
    group_id int          not null,
    constraint pipeline_web_label_l_group_id_caef14a7_fk_pipeline_
        foreign key (group_id) references pipeline_web_label_labelgroup (id)
);

create index pipeline_web_label_label_code_861b4e10
    on pipeline_web_label_label (code);

