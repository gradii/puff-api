create table workflow_transition
(
    id             int auto_increment
        primary key,
    creator        varchar(64) null,
    create_at      datetime(6) not null,
    update_at      datetime(6) not null,
    updated_by     varchar(64) null,
    end_at         datetime(6) null,
    is_deleted     tinyint(1)  not null,
    name           varchar(64) not null,
    direction      varchar(32) not null,
    check_needed   tinyint(1)  not null,
    opt_needed     tinyint(1)  not null,
    is_builtin     tinyint(1)  not null,
    from_state_id  int         not null,
    to_state_id    int         not null,
    workflow_id    int         not null,
    axis           varchar(64) not null,
    `condition`    longtext    not null,
    condition_type varchar(32) not null,
    constraint workflow_transition_from_state_id_5c494844_fk_workflow_state_id
        foreign key (from_state_id) references workflow_state (id),
    constraint workflow_transition_to_state_id_97410e71_fk_workflow_state_id
        foreign key (to_state_id) references workflow_state (id),
    constraint workflow_transition_workflow_id_02ab2c30_fk_workflow_workflow_id
        foreign key (workflow_id) references workflow_workflow (id)
);

create index workflow_transition_is_deleted_97ca3c4f
    on workflow_transition (is_deleted);

INSERT INTO bk_itsm.workflow_transition (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, direction, check_needed, opt_needed, is_builtin, from_state_id, to_state_id, workflow_id, axis, `condition`, condition_type) VALUES (1, null, '2022-04-04 18:29:34.419692', '2022-04-04 18:29:34.419704', null, null, 0, '', 'FORWARD', 1, 1, 0, 1, 2, 1, '{"start":"Right","end":"Left"}', '{"expressions":[{"type":"and","expressions":[{"key":"G_INT_1","condition":"==","value":1}]}],"type":"and"}', 'default');
INSERT INTO bk_itsm.workflow_transition (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, direction, check_needed, opt_needed, is_builtin, from_state_id, to_state_id, workflow_id, axis, `condition`, condition_type) VALUES (2, null, '2022-04-04 18:29:34.420196', '2022-04-04 18:29:34.420207', null, null, 0, '默认', 'FORWARD', 1, 1, 0, 2, 4, 1, '{"start":"Right","end":"Left"}', '{"expressions":[{"type":"and","expressions":[{"key":"G_INT_1","condition":"==","value":1}]}],"type":"and"}', 'default');
INSERT INTO bk_itsm.workflow_transition (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, direction, check_needed, opt_needed, is_builtin, from_state_id, to_state_id, workflow_id, axis, `condition`, condition_type) VALUES (3, null, '2022-04-04 18:29:34.420652', '2022-04-04 18:29:34.420663', null, null, 0, '通过', 'FORWARD', 1, 1, 0, 4, 5, 1, '{"start":"Right","end":"Left"}', '{"expressions":[{"checkInfo":false,"expressions":[{"choiceList":[],"condition":"==","key":"ef1ecec2fb4d68acbd8f98e7a232c398","source":"field","type":"SELECT","value":"true","meta":{"code":"NODE_APPROVE_RESULT","type":"SELECT","choice":[{"key":"false","name":"\\u62d2\\u7edd"},{"key":"true","name":"\\u901a\\u8fc7"}]}}],"type":"and"}],"type":"and"}', 'by_field');
INSERT INTO bk_itsm.workflow_transition (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, direction, check_needed, opt_needed, is_builtin, from_state_id, to_state_id, workflow_id, axis, `condition`, condition_type) VALUES (4, null, '2022-04-04 18:29:34.421176', '2022-04-04 18:29:34.421188', null, null, 0, '拒绝', 'FORWARD', 1, 1, 0, 4, 3, 1, '{"start":"Bottom","end":"Left"}', '{"expressions":[{"checkInfo":false,"expressions":[{"choiceList":[],"condition":"==","key":"ef1ecec2fb4d68acbd8f98e7a232c398","source":"field","type":"SELECT","value":"false","meta":{"code":"NODE_APPROVE_RESULT","type":"SELECT","choice":[{"key":"false","name":"\\u62d2\\u7edd"},{"key":"true","name":"\\u901a\\u8fc7"}]}}],"type":"and"}],"type":"and"}', 'by_field');
INSERT INTO bk_itsm.workflow_transition (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, direction, check_needed, opt_needed, is_builtin, from_state_id, to_state_id, workflow_id, axis, `condition`, condition_type) VALUES (5, null, '2022-04-04 18:29:34.421656', '2022-04-04 18:29:34.421667', null, null, 0, '默认', 'FORWARD', 1, 1, 0, 5, 3, 1, '{"start":"Bottom","end":"Top"}', '{"expressions":[{"type":"and","expressions":[{"key":"G_INT_1","condition":"==","value":1}]}],"type":"and"}', 'default');
INSERT INTO bk_itsm.workflow_transition (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, direction, check_needed, opt_needed, is_builtin, from_state_id, to_state_id, workflow_id, axis, `condition`, condition_type) VALUES (6, null, '2022-04-04 18:29:34.455998', '2022-04-04 18:29:34.456010', null, null, 0, '', 'FORWARD', 1, 1, 0, 6, 7, 2, '{"start":"Right","end":"Left"}', '{"expressions":[{"type":"and","expressions":[{"key":"G_INT_1","condition":"==","value":1}]}],"type":"and"}', 'default');
INSERT INTO bk_itsm.workflow_transition (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, direction, check_needed, opt_needed, is_builtin, from_state_id, to_state_id, workflow_id, axis, `condition`, condition_type) VALUES (7, null, '2022-04-04 18:29:34.456495', '2022-04-04 18:29:34.456506', null, null, 0, '转运维', 'FORWARD', 1, 1, 0, 9, 10, 2, '{"start":"Right","end":"Left"}', '{"expressions":[{"type":"and","expressions":[{"key":"G_INT_1","condition":"==","value":1}]}],"type":"and"}', 'default');
INSERT INTO bk_itsm.workflow_transition (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, direction, check_needed, opt_needed, is_builtin, from_state_id, to_state_id, workflow_id, axis, `condition`, condition_type) VALUES (8, null, '2022-04-04 18:29:34.456946', '2022-04-04 18:29:34.456956', null, null, 0, '验证通过', 'FORWARD', 1, 1, 0, 11, 8, 2, '{"start":"Right","end":"Left"}', '{"expressions":[{"checkInfo":false,"expressions":[{"choiceList":[],"condition":"==","key":"YANZHENGJIEGUO","source":"field","type":"RADIO","value":"TONGGUO","meta":{}}],"type":"and"}],"type":"and"}', 'by_field');
INSERT INTO bk_itsm.workflow_transition (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, direction, check_needed, opt_needed, is_builtin, from_state_id, to_state_id, workflow_id, axis, `condition`, condition_type) VALUES (9, null, '2022-04-04 18:29:34.457411', '2022-04-04 18:29:34.457422', null, null, 0, '默认', 'FORWARD', 1, 1, 0, 10, 12, 2, '{"start":"Right","end":"Left"}', '{"expressions":[{"type":"and","expressions":[{"key":"G_INT_1","condition":"==","value":1}]}],"type":"and"}', 'default');
INSERT INTO bk_itsm.workflow_transition (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, direction, check_needed, opt_needed, is_builtin, from_state_id, to_state_id, workflow_id, axis, `condition`, condition_type) VALUES (10, null, '2022-04-04 18:29:34.457877', '2022-04-04 18:29:34.457888', null, null, 0, '默认', 'FORWARD', 1, 1, 0, 7, 9, 2, '{"start":"Right","end":"Left"}', '{"expressions":[{"type":"and","expressions":[{"key":"G_INT_1","condition":"==","value":1}]}],"type":"and"}', 'default');
INSERT INTO bk_itsm.workflow_transition (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, direction, check_needed, opt_needed, is_builtin, from_state_id, to_state_id, workflow_id, axis, `condition`, condition_type) VALUES (11, null, '2022-04-04 18:29:34.458330', '2022-04-04 18:29:34.458341', null, null, 0, '默认', 'FORWARD', 1, 1, 0, 12, 11, 2, '{"start":"Right","end":"Left"}', '{"expressions":[{"type":"and","expressions":[{"key":"G_INT_1","condition":"==","value":1}]}],"type":"and"}', 'default');
INSERT INTO bk_itsm.workflow_transition (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, direction, check_needed, opt_needed, is_builtin, from_state_id, to_state_id, workflow_id, axis, `condition`, condition_type) VALUES (12, null, '2022-04-04 18:29:34.458777', '2022-04-04 18:29:34.458788', null, null, 0, '验证不通过', 'FORWARD', 1, 1, 0, 11, 10, 2, '{"start":"Bottom","end":"Bottom"}', '{"expressions":[{"checkInfo":false,"expressions":[{"choiceList":[],"condition":"==","key":"YANZHENGJIEGUO","source":"field","type":"RADIO","value":"BUTONGGUO","meta":{}}],"type":"and"}],"type":"and"}', 'by_field');
INSERT INTO bk_itsm.workflow_transition (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, direction, check_needed, opt_needed, is_builtin, from_state_id, to_state_id, workflow_id, axis, `condition`, condition_type) VALUES (13, 'system', '2022-04-04 18:29:34.981278', '2022-04-04 18:29:34.981289', 'system', null, 0, '', 'FORWARD', 1, 1, 1, 13, 14, 3, '{}', '{"expressions":[{"type":"and","expressions":[{"key":"G_INT_1","condition":"==","value":1}]}],"type":"and"}', 'default');
INSERT INTO bk_itsm.workflow_transition (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, direction, check_needed, opt_needed, is_builtin, from_state_id, to_state_id, workflow_id, axis, `condition`, condition_type) VALUES (14, 'system', '2022-04-04 18:29:34.981831', '2022-04-04 18:29:34.981842', 'system', null, 0, '默认', 'FORWARD', 1, 1, 1, 14, 15, 3, '{}', '{"expressions":[{"type":"and","expressions":[{"key":"G_INT_1","condition":"==","value":1}]}],"type":"and"}', 'default');
INSERT INTO bk_itsm.workflow_transition (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, direction, check_needed, opt_needed, is_builtin, from_state_id, to_state_id, workflow_id, axis, `condition`, condition_type) VALUES (15, 'system', '2022-04-04 18:29:34.982323', '2022-04-04 18:29:34.982334', 'system', null, 0, '默认', 'FORWARD', 1, 1, 1, 15, 16, 3, '{}', '{"expressions":[{"type":"and","expressions":[{"key":"G_INT_1","condition":"==","value":1}]}],"type":"and"}', 'default');
INSERT INTO bk_itsm.workflow_transition (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, direction, check_needed, opt_needed, is_builtin, from_state_id, to_state_id, workflow_id, axis, `condition`, condition_type) VALUES (16, null, '2022-04-04 18:29:35.043572', '2022-04-04 18:29:35.043583', null, null, 0, '', 'FORWARD', 1, 1, 0, 17, 18, 4, '{"start":"Right","end":"Left"}', '{"expressions":[{"type":"and","expressions":[{"key":"G_INT_1","condition":"==","value":1}]}],"type":"and"}', 'default');
INSERT INTO bk_itsm.workflow_transition (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, direction, check_needed, opt_needed, is_builtin, from_state_id, to_state_id, workflow_id, axis, `condition`, condition_type) VALUES (17, null, '2022-04-04 18:29:35.044065', '2022-04-04 18:29:35.044076', null, null, 0, '默认', 'FORWARD', 1, 1, 0, 18, 20, 4, '{"start":"Right","end":"Left"}', '{"expressions":[{"type":"and","expressions":[{"key":"G_INT_1","condition":"==","value":1}]}],"type":"and"}', 'default');
INSERT INTO bk_itsm.workflow_transition (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, direction, check_needed, opt_needed, is_builtin, from_state_id, to_state_id, workflow_id, axis, `condition`, condition_type) VALUES (18, null, '2022-04-04 18:29:35.044536', '2022-04-04 18:29:35.044547', null, null, 0, '默认', 'FORWARD', 1, 1, 0, 20, 19, 4, '{"start":"Right","end":"Left"}', '{"expressions":[{"type":"and","expressions":[{"key":"G_INT_1","condition":"==","value":1}]}],"type":"and"}', 'default');
INSERT INTO bk_itsm.workflow_transition (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, direction, check_needed, opt_needed, is_builtin, from_state_id, to_state_id, workflow_id, axis, `condition`, condition_type) VALUES (19, null, '2022-04-04 18:29:35.079810', '2022-04-04 18:29:35.079821', null, null, 0, '', 'FORWARD', 1, 1, 0, 21, 22, 5, '{"start":"Right","end":"Left"}', '{"expressions":[{"type":"and","expressions":[{"key":"G_INT_1","condition":"==","value":1}]}],"type":"and"}', 'default');
INSERT INTO bk_itsm.workflow_transition (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, direction, check_needed, opt_needed, is_builtin, from_state_id, to_state_id, workflow_id, axis, `condition`, condition_type) VALUES (20, null, '2022-04-04 18:29:35.080308', '2022-04-04 18:29:35.080319', null, null, 0, '通过', 'FORWARD', 1, 1, 0, 24, 23, 5, '{"start":"Right","end":"Top"}', '{"expressions":[{"type":"and","expressions":[{"key":"G_INT_1","condition":"==","value":1}]}],"type":"and"}', 'default');
INSERT INTO bk_itsm.workflow_transition (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, direction, check_needed, opt_needed, is_builtin, from_state_id, to_state_id, workflow_id, axis, `condition`, condition_type) VALUES (21, null, '2022-04-04 18:29:35.080767', '2022-04-04 18:29:35.080778', null, null, 0, '默认', 'FORWARD', 1, 1, 0, 22, 24, 5, '{"start":"Right","end":"Left"}', '{"expressions":[{"type":"and","expressions":[{"key":"G_INT_1","condition":"==","value":1}]}],"type":"and"}', 'default');
INSERT INTO bk_itsm.workflow_transition (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, direction, check_needed, opt_needed, is_builtin, from_state_id, to_state_id, workflow_id, axis, `condition`, condition_type) VALUES (22, null, '2022-04-04 18:29:35.200143', '2022-04-04 18:29:35.200154', null, null, 0, '', 'FORWARD', 1, 1, 0, 25, 26, 6, '{"start":"Right","end":"Left"}', '{"expressions":[{"type":"and","expressions":[{"key":"G_INT_1","condition":"==","value":1}]}],"type":"and"}', 'default');
INSERT INTO bk_itsm.workflow_transition (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, direction, check_needed, opt_needed, is_builtin, from_state_id, to_state_id, workflow_id, axis, `condition`, condition_type) VALUES (23, null, '2022-04-04 18:29:35.200622', '2022-04-04 18:29:35.200633', null, null, 0, '默认', 'FORWARD', 1, 1, 0, 26, 28, 6, '{"start":"Right","end":"Left"}', '{"expressions":[{"type":"and","expressions":[{"key":"G_INT_1","condition":"==","value":1}]}],"type":"and"}', 'default');
INSERT INTO bk_itsm.workflow_transition (id, creator, create_at, update_at, updated_by, end_at, is_deleted, name, direction, check_needed, opt_needed, is_builtin, from_state_id, to_state_id, workflow_id, axis, `condition`, condition_type) VALUES (24, null, '2022-04-04 18:29:35.201079', '2022-04-04 18:29:35.201090', null, null, 0, '默认', 'FORWARD', 1, 1, 0, 28, 27, 6, '{"start":"Right","end":"Bottom"}', '{"expressions":[{"type":"and","expressions":[{"key":"G_INT_1","condition":"==","value":1}]}],"type":"and"}', 'default');
