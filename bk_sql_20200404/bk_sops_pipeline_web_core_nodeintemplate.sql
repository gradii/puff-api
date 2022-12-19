create table pipeline_web_core_nodeintemplate
(
    id          int auto_increment
        primary key,
    node_id     varchar(32)  not null,
    node_type   varchar(100) not null,
    create_time datetime(6)  not null,
    edit_time   datetime(6)  not null,
    template_id varchar(32)  not null,
    version     varchar(32)  not null,
    constraint pipeline_web_core_nodein_node_id_template_id_vers_ab8e735b_uniq
        unique (node_id, template_id, version)
);

create index pipeline_web_core_nodeint_template_id_version_1ef0150a_idx
    on pipeline_web_core_nodeintemplate (template_id, version);

create index pipeline_web_core_nodeintemplate_template_id_8642caee
    on pipeline_web_core_nodeintemplate (template_id);

INSERT INTO bk_sops.pipeline_web_core_nodeintemplate (id, node_id, node_type, create_time, edit_time, template_id, version) VALUES (1, 'nodecab1a218f096fa8d458b7a9e0301', 'ServiceActivity', '2022-04-04 11:47:09.945364', '2022-04-04 11:47:51.829638', 'n1f31559765f309a90a23f5ce90b8645', '9f64a69787b46949b4a2343a1da508de');
INSERT INTO bk_sops.pipeline_web_core_nodeintemplate (id, node_id, node_type, create_time, edit_time, template_id, version) VALUES (2, 'node46a16475df222e9bdd543944f788', 'EmptyStartEvent', '2022-04-04 11:47:09.945401', '2022-04-04 11:47:51.829638', 'n1f31559765f309a90a23f5ce90b8645', '9f64a69787b46949b4a2343a1da508de');
INSERT INTO bk_sops.pipeline_web_core_nodeintemplate (id, node_id, node_type, create_time, edit_time, template_id, version) VALUES (3, 'node9ed46b528832ee917da58a623f02', 'EmptyEndEvent', '2022-04-04 11:47:09.945434', '2022-04-04 11:47:51.829638', 'n1f31559765f309a90a23f5ce90b8645', '9f64a69787b46949b4a2343a1da508de');
