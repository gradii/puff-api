create table pipeline_web_label_nodeininstanceattrlabel_labels
(
    id                         int auto_increment
        primary key,
    nodeininstanceattrlabel_id int not null,
    label_id                   int not null,
    constraint pipeline_web_label_nodei_nodeininstanceattrlabel__49eb7554_uniq
        unique (nodeininstanceattrlabel_id, label_id),
    constraint pipeline_web_label_n_label_id_dbb276f0_fk_pipeline_
        foreign key (label_id) references pipeline_web_label_label (id),
    constraint pipeline_web_label_n_nodeininstanceattrla_2f6bde62_fk_pipeline_
        foreign key (nodeininstanceattrlabel_id) references pipeline_web_label_nodeininstanceattrlabel (id)
);

