create table function_functiontask
(
    id            int auto_increment
        primary key,
    creator       varchar(32) not null,
    create_time   datetime(6) not null,
    claimant      varchar(32) not null,
    claim_time    datetime(6) null,
    rejecter      varchar(32) not null,
    reject_time   datetime(6) null,
    predecessor   varchar(32) not null,
    transfer_time datetime(6) null,
    status        varchar(32) not null,
    task_id       int         not null,
    constraint function_functiontas_task_id_671ce105_fk_taskflow3
        foreign key (task_id) references taskflow3_taskflowinstance (id)
);

