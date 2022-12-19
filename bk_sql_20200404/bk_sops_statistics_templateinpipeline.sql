create table statistics_templateinpipeline
(
    id               int auto_increment
        primary key,
    template_id      varchar(255) not null,
    atom_total       int          not null,
    subprocess_total int          not null,
    gateways_total   int          not null
);

create index statistics_templateinpipeline_template_id_a902cb6f
    on statistics_templateinpipeline (template_id);

INSERT INTO bk_sops.statistics_templateinpipeline (id, template_id, atom_total, subprocess_total, gateways_total) VALUES (1, 'n1f31559765f309a90a23f5ce90b8645', 1, 0, 0);
