create table template_commontemplate
(
    id                   int auto_increment
        primary key,
    category             varchar(255) not null,
    notify_type          varchar(128) not null,
    notify_receivers     longtext     not null,
    time_out             int          not null,
    is_deleted           tinyint(1)   not null,
    pipeline_template_id varchar(32)  null,
    constraint template_commontempl_pipeline_template_id_30df1bae_fk_pipeline_
        foreign key (pipeline_template_id) references pipeline_pipelinetemplate (template_id)
);

INSERT INTO bk_sops.template_commontemplate (id, category, notify_type, notify_receivers, time_out, is_deleted, pipeline_template_id) VALUES (10000, 'Other', '[]', '{}', 20, 1, null);
INSERT INTO bk_sops.template_commontemplate (id, category, notify_type, notify_receivers, time_out, is_deleted, pipeline_template_id) VALUES (10001, 'Default', '[]', '{"receiver_group":[],"more_receiver":""}', 20, 0, 'n1f31559765f309a90a23f5ce90b8645');
