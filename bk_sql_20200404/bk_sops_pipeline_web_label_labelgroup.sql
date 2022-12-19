create table pipeline_web_label_labelgroup
(
    id   int auto_increment
        primary key,
    code varchar(255) not null,
    name varchar(255) not null
);

create index pipeline_web_label_labelgroup_code_8576228e
    on pipeline_web_label_labelgroup (code);

