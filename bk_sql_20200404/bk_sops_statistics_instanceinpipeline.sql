create table statistics_instanceinpipeline
(
    id               int auto_increment
        primary key,
    instance_id      varchar(255) not null,
    atom_total       int          not null,
    subprocess_total int          not null,
    gateways_total   int          not null
);

create index statistics_instanceinpipeline_instance_id_df327ed7
    on statistics_instanceinpipeline (instance_id);

