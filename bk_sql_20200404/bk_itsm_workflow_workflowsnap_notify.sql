create table workflow_workflowsnap_notify
(
    id              int auto_increment
        primary key,
    workflowsnap_id int not null,
    notify_id       int not null,
    constraint workflow_workflowsnap_no_workflowsnap_id_notify_i_9ba6ae1b_uniq
        unique (workflowsnap_id, notify_id),
    constraint workflow_workflowsna_notify_id_ce687693_fk_workflow_
        foreign key (notify_id) references workflow_notify (id),
    constraint workflow_workflowsna_workflowsnap_id_d58c19d3_fk_workflow_
        foreign key (workflowsnap_id) references workflow_workflowsnap (id)
);

