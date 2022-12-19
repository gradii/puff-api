create table workflow_workflow_notify
(
    id          int auto_increment
        primary key,
    workflow_id int not null,
    notify_id   int not null,
    constraint workflow_workflow_notify_workflow_id_notify_id_08d6b70b_uniq
        unique (workflow_id, notify_id),
    constraint workflow_workflow_no_notify_id_506a416b_fk_workflow_
        foreign key (notify_id) references workflow_notify (id),
    constraint workflow_workflow_no_workflow_id_cb66c24c_fk_workflow_
        foreign key (workflow_id) references workflow_workflow (id)
);

INSERT INTO bk_itsm.workflow_workflow_notify (id, workflow_id, notify_id) VALUES (1, 1, 1);
INSERT INTO bk_itsm.workflow_workflow_notify (id, workflow_id, notify_id) VALUES (2, 1, 2);
INSERT INTO bk_itsm.workflow_workflow_notify (id, workflow_id, notify_id) VALUES (3, 2, 1);
INSERT INTO bk_itsm.workflow_workflow_notify (id, workflow_id, notify_id) VALUES (4, 3, 1);
INSERT INTO bk_itsm.workflow_workflow_notify (id, workflow_id, notify_id) VALUES (5, 3, 2);
INSERT INTO bk_itsm.workflow_workflow_notify (id, workflow_id, notify_id) VALUES (6, 4, 1);
INSERT INTO bk_itsm.workflow_workflow_notify (id, workflow_id, notify_id) VALUES (7, 4, 2);
INSERT INTO bk_itsm.workflow_workflow_notify (id, workflow_id, notify_id) VALUES (8, 5, 1);
INSERT INTO bk_itsm.workflow_workflow_notify (id, workflow_id, notify_id) VALUES (9, 5, 2);
INSERT INTO bk_itsm.workflow_workflow_notify (id, workflow_id, notify_id) VALUES (10, 6, 1);
INSERT INTO bk_itsm.workflow_workflow_notify (id, workflow_id, notify_id) VALUES (11, 6, 2);
