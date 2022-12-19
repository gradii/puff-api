create table workflow_workflowsnap
(
    id            int auto_increment
        primary key,
    workflow_id   int         not null,
    snapshot_time datetime(6) not null,
    fields        longtext    null,
    states        longtext    null,
    transitions   longtext    null,
    master        longtext    null,
    notify_rule   varchar(32) not null,
    notify_freq   int         not null
);

