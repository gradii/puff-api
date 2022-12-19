create table pipeline_web_label_nodeininstanceattrlabel
(
    id      int auto_increment
        primary key,
    node_id int not null,
    constraint pipeline_web_label_n_node_id_519453bb_fk_pipeline_
        foreign key (node_id) references pipeline_web_core_nodeininstance (id)
);

