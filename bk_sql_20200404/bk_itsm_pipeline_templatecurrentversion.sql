create table pipeline_templatecurrentversion
(
    id              int auto_increment
        primary key,
    template_id     varchar(32) not null,
    current_version varchar(32) not null
);

create index pipeline_templatecurrentversion_template_id_11b7fc58
    on pipeline_templatecurrentversion (template_id);

