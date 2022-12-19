create table label_templatelabelrelation
(
    id          int auto_increment
        primary key,
    template_id int not null,
    label_id    int not null,
    constraint label_templatelabelrelation_template_id_label_id_bd5bd6bf_uniq
        unique (template_id, label_id)
);

create index label_templatelabelrelation_label_id_d2b82a46
    on label_templatelabelrelation (label_id);

create index label_templatelabelrelation_template_id_5028d531
    on label_templatelabelrelation (template_id);

