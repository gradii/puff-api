create table pipeline_web_label_nodeintemplateattrlabel
(
    id      int auto_increment
        primary key,
    node_id int not null,
    constraint pipeline_web_label_n_node_id_a2cd977a_fk_pipeline_
        foreign key (node_id) references pipeline_web_core_nodeintemplate (id)
);

INSERT INTO bk_sops.pipeline_web_label_nodeintemplateattrlabel (id, node_id) VALUES (3, 1);
INSERT INTO bk_sops.pipeline_web_label_nodeintemplateattrlabel (id, node_id) VALUES (2, 2);
INSERT INTO bk_sops.pipeline_web_label_nodeintemplateattrlabel (id, node_id) VALUES (1, 3);
