create table ticket_status
(
    id                int auto_increment
        primary key,
    creator           varchar(64)  null,
    create_at         datetime(6)  not null,
    update_at         datetime(6)  not null,
    updated_by        varchar(64)  null,
    end_at            datetime(6)  null,
    is_deleted        tinyint(1)   not null,
    ticket_id         int          not null,
    state_id          int          not null,
    bk_biz_id         int          not null,
    name              varchar(64)  not null,
    status            varchar(32)  not null,
    action_type       varchar(32)  not null,
    distribute_type   varchar(32)  not null,
    processors_type   varchar(32)  not null,
    processors        varchar(255) null,
    delivers_type     varchar(32)  not null,
    delivers          longtext     null,
    can_deliver       tinyint(1)   not null,
    assignors_type    varchar(32)  not null,
    assignors         longtext     null,
    can_terminate     tinyint(1)   not null,
    terminate_message longtext     null,
    fields            longtext     not null,
    api_instance_id   int          null,
    error_message     longtext     null,
    contexts          longtext     not null,
    tag               varchar(255) not null,
    meta              longtext     not null,
    is_sequential     tinyint(1)   not null,
    type              varchar(32)  not null,
    by_flow           varchar(64)  not null,
    ignore_params     longtext     not null,
    query_params      longtext     not null
);

create index ticket_status_is_deleted_b0f99ab9
    on ticket_status (is_deleted);

INSERT INTO bk_itsm.ticket_status (id, creator, create_at, update_at, updated_by, end_at, is_deleted, ticket_id, state_id, bk_biz_id, name, status, action_type, distribute_type, processors_type, processors, delivers_type, delivers, can_deliver, assignors_type, assignors, can_terminate, terminate_message, fields, api_instance_id, error_message, contexts, tag, meta, is_sequential, type, by_flow, ignore_params, query_params) VALUES (1, null, '2022-04-04 19:51:16.276471', '2022-04-04 19:51:16.332420', null, null, 0, 1, 2, -1, '提单', 'FINISHED', 'TRANSITION', 'PROCESS', 'OPEN', '', 'EMPTY', '', 0, '', '', 0, '', '[{"id":5,"key":"title","type":"STRING","choice":[],"name":"\\u6807\\u9898","value":"kk","display":true,"display_value":"kk","related_fields":{},"meta":{},"source_type":"CUSTOM","source_uri":"","kv_relation":{},"validate_type":"REQUIRE","api_instance_id":0,"regex":"EMPTY","regex_config":{},"custom_regex":"","default":"","desc":"\\u8bf7\\u8f93\\u5165\\u6807\\u9898","tips":"","is_tips":false,"layout":"COL_12","is_valid":true,"is_builtin":true,"ticket_id":1,"state_id":"","show_conditions":{},"show_type":1,"is_readonly":false,"source":"TABLE","workflow_field_id":1,"creator":null,"create_at":"2022-04-04 19:51:16","updated_by":null,"update_at":"2022-04-04 19:51:16","end_at":null,"workflow_id":1,"show_result":true},{"id":6,"key":"apply_content","type":"TEXT","choice":[],"name":"\\u7533\\u8bf7\\u5185\\u5bb9","value":"dsd","display":false,"display_value":"dsd","related_fields":{},"meta":{},"source_type":"CUSTOM","source_uri":"","kv_relation":{},"validate_type":"REQUIRE","api_instance_id":0,"regex":"EMPTY","regex_config":{"rule":{"expressions":[],"type":"and"}},"custom_regex":"","default":"","desc":"","tips":"","is_tips":false,"layout":"COL_12","is_valid":true,"is_builtin":false,"ticket_id":1,"state_id":"2","show_conditions":{},"show_type":1,"is_readonly":false,"source":"TABLE","workflow_field_id":2,"creator":null,"create_at":"2022-04-04 19:51:16","updated_by":null,"update_at":"2022-04-04 19:51:16","end_at":null,"workflow_id":1,"show_result":true},{"id":7,"key":"apply_reason","type":"TEXT","choice":[],"name":"\\u7533\\u8bf7\\u7406\\u7531","value":"sd","display":false,"display_value":"sd","related_fields":{},"meta":{},"source_type":"CUSTOM","source_uri":"","kv_relation":{},"validate_type":"REQUIRE","api_instance_id":0,"regex":"EMPTY","regex_config":{"rule":{"expressions":[],"type":"and"}},"custom_regex":"","default":"","desc":"","tips":"","is_tips":false,"layout":"COL_12","is_valid":true,"is_builtin":false,"ticket_id":1,"state_id":"2","show_conditions":{},"show_type":1,"is_readonly":false,"source":"TABLE","workflow_field_id":3,"creator":null,"create_at":"2022-04-04 19:51:16","updated_by":null,"update_at":"2022-04-04 19:51:16","end_at":null,"workflow_id":1,"show_result":true},{"id":8,"key":"ZHIDINGSHENPIREN","type":"MEMBERS","choice":[],"name":"\\u6307\\u5b9a\\u5ba1\\u6279\\u4eba","value":"admin","display":false,"display_value":"admin","related_fields":{},"meta":{},"source_type":"CUSTOM","source_uri":"","kv_relation":{},"validate_type":"REQUIRE","api_instance_id":0,"regex":"EMPTY","regex_config":{"rule":{"expressions":[],"type":"and"}},"custom_regex":"","default":"","desc":"","tips":"","is_tips":false,"layout":"COL_12","is_valid":true,"is_builtin":false,"ticket_id":1,"state_id":"2","show_conditions":{},"show_type":1,"is_readonly":false,"source":"CUSTOM","workflow_field_id":4,"creator":null,"create_at":"2022-04-04 19:51:16","updated_by":null,"update_at":"2022-04-04 19:51:16","end_at":null,"workflow_id":1,"show_result":true}]', 0, null, '{}', 'DEFAULT', '{"ticket_status":{"name":"NEW","type":"custom"}}', 0, 'NORMAL', '1', '{}', '{}');
INSERT INTO bk_itsm.ticket_status (id, creator, create_at, update_at, updated_by, end_at, is_deleted, ticket_id, state_id, bk_biz_id, name, status, action_type, distribute_type, processors_type, processors, delivers_type, delivers, can_deliver, assignors_type, assignors, can_terminate, terminate_message, fields, api_instance_id, error_message, contexts, tag, meta, is_sequential, type, by_flow, ignore_params, query_params) VALUES (2, null, '2022-04-04 19:51:16.777892', '2022-04-04 19:51:54.984830', null, null, 0, 1, 4, -1, '负责人审批', 'FINISHED', 'TRANSITION', 'PROCESS', 'PERSON', ',,admin,', 'OPEN', '', 1, '', '', 0, '', '[]', 0, null, '{}', 'DEFAULT', '{"ticket_status":{"name":"RUNNING","type":"custom"}}', 0, 'APPROVAL', '41dab08cb1d13d38939dbc2f305539a5', '{}', '{}');
INSERT INTO bk_itsm.ticket_status (id, creator, create_at, update_at, updated_by, end_at, is_deleted, ticket_id, state_id, bk_biz_id, name, status, action_type, distribute_type, processors_type, processors, delivers_type, delivers, can_deliver, assignors_type, assignors, can_terminate, terminate_message, fields, api_instance_id, error_message, contexts, tag, meta, is_sequential, type, by_flow, ignore_params, query_params) VALUES (3, null, '2022-04-04 19:51:55.067824', '2022-04-04 19:52:21.893820', null, null, 0, 1, 5, -1, '管理员审批', 'FINISHED', 'TRANSITION', 'PROCESS', 'PERSON', ',admin,', 'EMPTY', '', 0, '', '', 0, '', '[]', 0, null, '{}', 'DEFAULT', '{"ticket_status":{"name":"","type":"keep"}}', 0, 'APPROVAL', '5bd8f303b79c3e258d7a8bcb09935e4d', '{}', '{}');
