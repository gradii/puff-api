create table pipeline_templaterelationship
(
    id                     int auto_increment
        primary key,
    ancestor_template_id   varchar(32) not null,
    descendant_template_id varchar(32) not null,
    subprocess_node_id     varchar(32) not null,
    version                varchar(32) not null
);

create index pipeline_templaterelationship_ancestor_template_id_d87c2cc2
    on pipeline_templaterelationship (ancestor_template_id);

