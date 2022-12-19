create table pipeline_templatecurrentversion
(
    id              int auto_increment
        primary key,
    template_id     varchar(32) not null,
    current_version varchar(32) not null
);

create index pipeline_templatecurrentversion_template_id_11b7fc58
    on pipeline_templatecurrentversion (template_id);

INSERT INTO bk_sops.pipeline_templatecurrentversion (id, template_id, current_version) VALUES (1, 'n1f31559765f309a90a23f5ce90b8645', '9f64a69787b46949b4a2343a1da508de');
