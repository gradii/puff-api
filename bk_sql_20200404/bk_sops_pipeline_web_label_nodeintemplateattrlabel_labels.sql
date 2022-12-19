create table pipeline_web_label_nodeintemplateattrlabel_labels
(
    id                         int auto_increment
        primary key,
    nodeintemplateattrlabel_id int not null,
    label_id                   int not null,
    constraint pipeline_web_label_nodei_nodeintemplateattrlabel__38e66bfe_uniq
        unique (nodeintemplateattrlabel_id, label_id),
    constraint pipeline_web_label_n_label_id_355c40d9_fk_pipeline_
        foreign key (label_id) references pipeline_web_label_label (id),
    constraint pipeline_web_label_n_nodeintemplateattrla_4b82ed53_fk_pipeline_
        foreign key (nodeintemplateattrlabel_id) references pipeline_web_label_nodeintemplateattrlabel (id)
);

