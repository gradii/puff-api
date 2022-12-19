create table workflow_state_notify
(
    id        int auto_increment
        primary key,
    state_id  int not null,
    notify_id int not null,
    constraint workflow_state_notify_state_id_notify_id_bf20ee26_uniq
        unique (state_id, notify_id),
    constraint workflow_state_notify_notify_id_8f4b391f_fk_workflow_notify_id
        foreign key (notify_id) references workflow_notify (id),
    constraint workflow_state_notify_state_id_fecd4505_fk_workflow_state_id
        foreign key (state_id) references workflow_state (id)
);

