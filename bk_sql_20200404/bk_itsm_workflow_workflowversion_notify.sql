create table workflow_workflowversion_notify
(
    id                 int auto_increment
        primary key,
    workflowversion_id int not null,
    notify_id          int not null,
    constraint workflow_workflowversion_workflowversion_id_notif_3d6f03cc_uniq
        unique (workflowversion_id, notify_id),
    constraint workflow_workflowver_notify_id_e75f8c9a_fk_workflow_
        foreign key (notify_id) references workflow_notify (id),
    constraint workflow_workflowver_workflowversion_id_b0df1488_fk_workflow_
        foreign key (workflowversion_id) references workflow_workflowversion (id)
);

INSERT INTO bk_itsm.workflow_workflowversion_notify (id, workflowversion_id, notify_id) VALUES (1, 1, 1);
INSERT INTO bk_itsm.workflow_workflowversion_notify (id, workflowversion_id, notify_id) VALUES (2, 1, 2);
INSERT INTO bk_itsm.workflow_workflowversion_notify (id, workflowversion_id, notify_id) VALUES (3, 2, 1);
INSERT INTO bk_itsm.workflow_workflowversion_notify (id, workflowversion_id, notify_id) VALUES (4, 2, 2);
INSERT INTO bk_itsm.workflow_workflowversion_notify (id, workflowversion_id, notify_id) VALUES (5, 3, 1);
INSERT INTO bk_itsm.workflow_workflowversion_notify (id, workflowversion_id, notify_id) VALUES (6, 3, 2);
INSERT INTO bk_itsm.workflow_workflowversion_notify (id, workflowversion_id, notify_id) VALUES (7, 4, 1);
INSERT INTO bk_itsm.workflow_workflowversion_notify (id, workflowversion_id, notify_id) VALUES (8, 4, 2);
INSERT INTO bk_itsm.workflow_workflowversion_notify (id, workflowversion_id, notify_id) VALUES (9, 5, 1);
INSERT INTO bk_itsm.workflow_workflowversion_notify (id, workflowversion_id, notify_id) VALUES (10, 5, 2);
