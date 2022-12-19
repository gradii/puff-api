create table sla_sla_policies
(
    id                int auto_increment
        primary key,
    sla_id            int not null,
    prioritypolicy_id int not null,
    constraint sla_sla_policies_sla_id_prioritypolicy_id_6b13cafb_uniq
        unique (sla_id, prioritypolicy_id),
    constraint sla_sla_policies_prioritypolicy_id_28e0f623_fk_sla_prior
        foreign key (prioritypolicy_id) references sla_prioritypolicy (id),
    constraint sla_sla_policies_sla_id_91ec4db8_fk_sla_sla_id
        foreign key (sla_id) references sla_sla (id)
);

INSERT INTO bk_itsm.sla_sla_policies (id, sla_id, prioritypolicy_id) VALUES (1, 1, 1);
INSERT INTO bk_itsm.sla_sla_policies (id, sla_id, prioritypolicy_id) VALUES (2, 1, 2);
INSERT INTO bk_itsm.sla_sla_policies (id, sla_id, prioritypolicy_id) VALUES (3, 1, 3);
INSERT INTO bk_itsm.sla_sla_policies (id, sla_id, prioritypolicy_id) VALUES (4, 2, 4);
INSERT INTO bk_itsm.sla_sla_policies (id, sla_id, prioritypolicy_id) VALUES (5, 2, 5);
INSERT INTO bk_itsm.sla_sla_policies (id, sla_id, prioritypolicy_id) VALUES (6, 2, 6);
