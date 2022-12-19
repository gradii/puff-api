create table service_service
(
    id                int auto_increment
        primary key,
    creator           varchar(64)  not null,
    create_at         datetime(6)  not null,
    update_at         datetime(6)  not null,
    updated_by        varchar(64)  not null,
    end_at            datetime(6)  null,
    is_deleted        tinyint(1)   not null,
    is_builtin        tinyint(1)   not null,
    `key`             varchar(64)  not null,
    name              varchar(255) not null,
    `desc`            varchar(255) not null,
    is_valid          tinyint(1)   not null,
    sla_id            int          null,
    workflow_id       int          not null,
    display_role      varchar(255) null,
    display_type      varchar(32)  not null,
    owners            longtext     not null,
    can_ticket_agency tinyint(1)   not null,
    constraint service_service_sla_id_8a174fea_fk_sla_sla_id
        foreign key (sla_id) references sla_sla (id),
    constraint service_service_workflow_id_910c093b_fk_workflow_
        foreign key (workflow_id) references workflow_workflowversion (id)
);

INSERT INTO bk_itsm.service_service (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`, is_valid, sla_id, workflow_id, display_role, display_type, owners, can_ticket_agency) VALUES (1, '', '2022-04-04 18:29:34.510033', '2022-04-04 18:29:34.510051', '', null, 0, 0, 'request', '帐号开通申请', '内置审批服务', 1, null, 1, '', 'OPEN', 'admin', 0);
INSERT INTO bk_itsm.service_service (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`, is_valid, sla_id, workflow_id, display_role, display_type, owners, can_ticket_agency) VALUES (2, '', '2022-04-04 18:29:35.016429', '2022-04-04 18:29:35.016448', '', null, 0, 0, 'request', '内置审批服务', '', 1, null, 2, '', 'INVISIBLE', 'admin', 0);
INSERT INTO bk_itsm.service_service (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`, is_valid, sla_id, workflow_id, display_role, display_type, owners, can_ticket_agency) VALUES (3, '', '2022-04-04 18:29:35.123725', '2022-04-04 18:29:35.128269', '', null, 0, 0, 'request', '默认审批流程', '默认审批服务', 1, null, 3, ',BK_IAM,', 'API', 'admin', 0);
INSERT INTO bk_itsm.service_service (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`, is_valid, sla_id, workflow_id, display_role, display_type, owners, can_ticket_agency) VALUES (4, '', '2022-04-04 18:29:35.165375', '2022-04-04 18:29:35.169699', '', null, 0, 0, 'request', '用户组审批流程', '用户组审批服务', 1, null, 4, ',BK_IAM,', 'API', 'admin', 0);
INSERT INTO bk_itsm.service_service (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, `key`, name, `desc`, is_valid, sla_id, workflow_id, display_role, display_type, owners, can_ticket_agency) VALUES (5, '', '2022-04-04 18:29:35.329974', '2022-04-04 18:29:35.329995', '', null, 0, 0, 'request', '日志平台容量评估', '日志检索采集接入服务', 1, null, 5, ',LOG_SEARCH,', 'API', 'admin', 0);
