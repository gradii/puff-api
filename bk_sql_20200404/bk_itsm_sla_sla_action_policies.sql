create table sla_sla_action_policies
(
    id              int auto_increment
        primary key,
    sla_id          int not null,
    actionpolicy_id int not null,
    constraint sla_sla_action_policies_sla_id_actionpolicy_id_29699d50_uniq
        unique (sla_id, actionpolicy_id),
    constraint sla_sla_action_polic_actionpolicy_id_86f93ee2_fk_sla_actio
        foreign key (actionpolicy_id) references sla_actionpolicy (id),
    constraint sla_sla_action_policies_sla_id_c284479c_fk_sla_sla_id
        foreign key (sla_id) references sla_sla (id)
);

