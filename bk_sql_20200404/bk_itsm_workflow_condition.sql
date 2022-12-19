create table workflow_condition
(
    id          int auto_increment
        primary key,
    creator     varchar(64) null,
    create_at   datetime(6) not null,
    update_at   datetime(6) not null,
    updated_by  varchar(64) null,
    end_at      datetime(6) null,
    is_deleted  tinyint(1)  not null,
    name        varchar(64) not null,
    data        longtext    not null,
    workflow_id int         not null,
    constraint workflow_condition_workflow_id_9c15524e_fk_workflow_workflow_id
        foreign key (workflow_id) references workflow_workflow (id)
);

create index workflow_condition_is_deleted_34903b35
    on workflow_condition (is_deleted);

