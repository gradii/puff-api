create table sla_actionpolicy_actions
(
    id              int auto_increment
        primary key,
    actionpolicy_id int not null,
    action_id       int not null,
    constraint sla_actionpolicy_actions_actionpolicy_id_action_id_af0be90e_uniq
        unique (actionpolicy_id, action_id),
    constraint sla_actionpolicy_act_actionpolicy_id_78aea068_fk_sla_actio
        foreign key (actionpolicy_id) references sla_actionpolicy (id),
    constraint sla_actionpolicy_actions_action_id_05bc35a8_fk_sla_action_id
        foreign key (action_id) references sla_action (id)
);

