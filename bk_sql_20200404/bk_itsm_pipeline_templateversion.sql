create table pipeline_templateversion
(
    id          int auto_increment
        primary key,
    md5         varchar(32) not null,
    date        datetime(6) not null,
    snapshot_id int         not null,
    template_id int         not null,
    constraint pipeline_templatever_snapshot_id_9f506913_fk_pipeline_
        foreign key (snapshot_id) references pipeline_snapshot (id),
    constraint pipeline_templatever_template_id_acbce41e_fk_pipeline_
        foreign key (template_id) references pipeline_pipelinetemplate (id)
);

create index pipeline_templateversion_md5_90920973
    on pipeline_templateversion (md5);

