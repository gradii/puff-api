create table Records
(
    id               int auto_increment
        primary key,
    uid              char(32)          not null,
    api_uid          varchar(64)       not null,
    ticket_id        int               not null,
    state_id         int               not null,
    api_instance_id  int               not null,
    remark           varchar(255)      not null,
    method           varchar(8)        not null,
    url              varchar(255)      not null,
    request_message  longtext          not null,
    operator         varchar(255)      not null,
    request_host     varchar(128)      not null,
    status_code      smallint unsigned not null,
    response_message longtext          not null,
    date_created     datetime(6)       not null,
    duration         bigint            null,
    constraint uid
        unique (uid)
);

INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (1, '8006bc4b662c3e87b7a3c0cd8bac6721', '', 0, 0, 0, 'OK', 'POST', 'http://paas.service.consul:80/api/c/compapi/v2/iam/authorization/resource_creator_action/', 'POST http://paas.service.consul:80/api/c/compapi/v2/iam/authorization/resource_creator_action/ HTTP/1.1
Host: paas.service.consul:80

{"system": "bk_itsm", "type": "role", "id": 16, "name": "\\u65e5\\u5fd7\\u68c0\\u7d22\\u7cfb\\u7edf", "creator": "admin", "bk_app_code": "bk_itsm", "bk_app_secret": "******", "bk_token": "", "bk_username": "admin"}
', '', '(''10.64.1.198'', 80)', 200, '{"message": "OK", "code": 0, "data": [], "result": true, "request_id": "8b7612c70df14eb9b6b69f9da142c98f"}', '2022-04-04 18:29:35.437485', 100659);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (2, 'bfc56efb97fb38e4a8482135084c0e95', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "system_settings_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"system_settings_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:05.786869', 23257);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (3, '238ac379a9c6347f997fd324485da128', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "project_view"}, {"id": "project_edit"}, {"id": "workflow_create"}, {"id": "service_create"}, {"id": "role_create"}, {"id": "sla_manage"}, {"id": "flow_element_manage"}, {"id": "system_settings_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"project_view"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"project_edit"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"workflow_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"service_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"role_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"sla_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"flow_element_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"system_settings_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:06.785525', 2175);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (4, '496766a8214b3be592fbf7efe845c35f', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "project_create"}, {"id": "operational_data_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"project_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"operational_data_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:06.915702', 1321);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (5, 'aa4a2f75aad53996b1214e76295fdf35', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "system_settings_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"system_settings_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:07.050309', 2242);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (6, 'b4b83a471b493323bf9aab67d2985438', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:07.081329', 1475);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (7, '09940b64210a3865bb34621ecb5f10c2', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:10.867164', 1698);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (8, '9c5efd33e2e7399e9dfa16a94a2c507c', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:12.120085', 1832);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (9, '50334d1f1ca33ba0bab8d556a3ff0d1f', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "project_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"project_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:14.574382', 2269);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (10, '2238b4ee877e31a590f4698f695bf250', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "flow_version_manage"}, {"id": "flow_version_restore"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"flow_version_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"flow_version_restore"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:14.576514', 1527);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (11, '7f4667193b6d3bd0b9d7940e58a4bead', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:14.583942', 1823);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (12, 'c68d3f39702230d1b16144e9960e4e7b', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "role_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"role_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:17.338587', 1846);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (13, 'eab93309cfd131cfa3dcdfe0779c1a4e', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:22.288099', 1822);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (14, '62b5b849d4633440b35a4a468a957a0e', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:24.984863', 1654);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (15, '60353451bc1b3d62932ff063e3fcee29', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:26.119991', 1690);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (16, 'f2eb92cf57e73bea8dfad1801a877f0a', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "project_view"}, {"id": "project_edit"}, {"id": "workflow_create"}, {"id": "service_create"}, {"id": "role_create"}, {"id": "sla_manage"}, {"id": "flow_element_manage"}, {"id": "system_settings_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"project_view"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"project_edit"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"workflow_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"service_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"role_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"sla_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"flow_element_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"system_settings_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:27.572372', 1435);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (17, '778c3bc8888a3083af7b5a2588809020', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "flow_version_manage"}, {"id": "flow_version_restore"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"flow_version_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"flow_version_restore"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:27.733328', 2755);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (18, 'fe3e0b441f31391ca6b0bc1b57f9d4c3', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "project_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"project_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:27.766235', 1577);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (19, '62cc0cb3d0f033b9a2b30ea1a6235b1c', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:27.774764', 1718);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (20, '8378799968d43309b0f4ce5244fe53a1', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "role_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"role_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:32.539195', 1458);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (21, '115a6e2d2850353b8dfa67054fe06618', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "workflow_manage"}, {"id": "workflow_deploy"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"workflow_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"workflow_deploy"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:42.202732', 1761);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (22, 'ab28802450fb3fd1989fde765f81c26e', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "project_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"project_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:44.403448', 2358);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (23, '8ac068084b8f3e15bafd2ec9066bceb3', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "workflow_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"workflow_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:44.414266', 2012);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (24, '41258d8cd148331594dd8a4e1dd126ad', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "workflow_manage"}, {"id": "workflow_deploy"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"workflow_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"workflow_deploy"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:44.418352', 1912);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (25, '91dc107d06363e84b653b28de4e3e8f9', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "flow_element_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"flow_element_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:44.425353', 1450);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (26, '2e11bbf134513553a0d95f106ea8160d', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "workflow_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"workflow_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:48.745622', 1324);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (27, 'bec978916d3434c791a672c6476e651f', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "workflow_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"workflow_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:48.745639', 1703);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (28, 'c804e63b6b1732c39ead3dcba5c21606', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "flow_element_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"flow_element_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:50.962881', 1598);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (29, '00d9025337113e0c9925c7f214007212', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "workflow_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"workflow_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:52.654901', 1410);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (30, 'd5ede95dc64d39b4a84285c795b075ef', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "workflow_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"workflow_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:52.655385', 1974);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (31, '3e0e37a8be9434b1aa02ba781ddf3d23', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "project_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"project_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:57.618642', 1500);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (32, '3a6b4d4c34fc3a9bb3f9ad70916ebe2d', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "workflow_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"workflow_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:57.630668', 1859);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (33, '93218ff5e64d3b39a358c69819727138', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "workflow_manage"}, {"id": "workflow_deploy"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"workflow_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"workflow_deploy"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:57.634977', 1650);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (34, 'f9025d1742ea349e92e62b4bad6d2b5e', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "workflow_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"workflow_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:58.700451', 2135);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (35, '78c2f04ff73f359b91e51b5ddeb19c10', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "workflow_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"workflow_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:30:58.707390', 1585);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (36, '0ae27ad272183e6ba633d54011232b3a', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "workflow_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"workflow_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 18:31:01.507630', 2332);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (37, '717a07bb4b453d4cb8cd4f84ed34bab6', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "system_settings_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"system_settings_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:48:41.412936', 3902);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (38, '3a19b6bc9cf53481b0d1166949d441b2', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "project_view"}, {"id": "project_edit"}, {"id": "workflow_create"}, {"id": "service_create"}, {"id": "role_create"}, {"id": "sla_manage"}, {"id": "flow_element_manage"}, {"id": "system_settings_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"project_view"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"project_edit"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"workflow_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"service_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"role_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"sla_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"flow_element_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"system_settings_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:48:41.486146', 1473);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (39, '20274c0b3a273065a7fc1959e7a5ecaa', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:48:41.775529', 2891);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (40, 'a54ddb59f4cb3bb78e6baa7bdc68b3e9', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "project_create"}, {"id": "operational_data_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"project_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"operational_data_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:48:41.784794', 5959);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (41, 'de6233e6f09231db8b590227059e6fc7', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "system_settings_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"system_settings_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:48:41.908152', 1622);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (42, 'b469f1f8148231b489858e402aa6de70', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:48:45.832699', 1872);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (43, 'e3b3e0b319e23216913c74e3a1fe76c9', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:48:51.444099', 1762);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (44, '694d9cccb84a376caa0b636af9f0d92d', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:48:54.230333', 7139);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (45, 'dc439d16c6d03a1b99d3a0b8ff5aa1f4', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:48:54.875965', 1804);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (46, '651905d9bc0b32fcac25ba8b0431298a', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "project_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"project_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:48:59.538220', 1967);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (47, '5b7a0bd6c42e3c2cbcf2170401079b4a', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "flow_version_manage"}, {"id": "flow_version_restore"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"flow_version_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"flow_version_restore"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:48:59.544203', 2660);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (48, '840c504aba6a314d8350f155feaa9b4a', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:48:59.547488', 1515);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (49, 'd0048a6291063b889ef8286972ad2b93', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:49:05.533769', 1556);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (50, '4956e05d850a32a8b980457bb2cfd300', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:49:30.284197', 1284);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (51, 'cea94197ff7534dbaf970f362ba8d85a', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:49:31.506927', 2112);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (52, '783ad7e9cdf932c9b5cdad83795e2fd9', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "project_view"}, {"id": "project_edit"}, {"id": "workflow_create"}, {"id": "service_create"}, {"id": "role_create"}, {"id": "sla_manage"}, {"id": "flow_element_manage"}, {"id": "system_settings_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"project_view"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"project_edit"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"workflow_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"service_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"role_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"sla_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"flow_element_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"system_settings_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:49:33.568486', 1737);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (53, '6c740b15c29a3dd2ada07f0d8122d966', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "project_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"project_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:49:33.741247', 3193);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (54, '3f2ed5e54d0e3cf79c4f0dabaedf27d4', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "flow_version_manage"}, {"id": "flow_version_restore"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"flow_version_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"flow_version_restore"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:49:33.746579', 3191);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (55, '4e9adf199d0e3461b67321976d070327', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:49:33.750595', 1904);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (56, '84dc1262cc1838af874f06af9300078f', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "role_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"role_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:49:38.269101', 2069);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (57, '9955d444b931362ca4fae5a28270b57d', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "workflow_manage"}, {"id": "workflow_deploy"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"workflow_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"workflow_deploy"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:49:44.467259', 2031);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (58, 'cea8ad5230c13d528a9360a7a7ff5935', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:49:50.438125', 1638);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (59, '81885a8346273b5a93327f0a18219a01', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "project_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"project_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:49:54.424119', 4666);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (60, 'e2d36c37b02c3bc988e16aebfed19884', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:49:54.438871', 2530);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (61, 'df995c0f20443410ab467c9aec5f0095', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "flow_version_manage"}, {"id": "flow_version_restore"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"flow_version_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"flow_version_restore"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:49:54.455410', 1738);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (62, '9683aff0c479397682f3bca0d5640ade', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "project_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"project_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:50:21.195782', 2023);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (63, 'fc8192fb8154331f84aa785dd05f3dfe', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:50:21.204402', 1314);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (64, 'c08a9e2e31ce3e1fa3f4c13c1f4280c2', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "project_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"project_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:50:26.128814', 1570);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (65, 'e8b2d200a2fa3e15ad9f5de82fa49f62', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:50:26.137843', 1771);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (66, '5e7da7bf8ba33baaad25d8d44542feaa', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "project_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"project_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:50:30.982288', 1499);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (67, 'e600ec1453c73a6aabd5c267befcae85', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:50:30.991455', 1609);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (68, '727053467869342b8e8fa2b72c7f44d0', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "system_settings_manage"}, {"id": "project_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"system_settings_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"project_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:50:32.761997', 1540);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (69, '1eea66c5ee2c3f07a583f46ee1dd850a', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:50:32.865398', 1370);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (70, '70f3857014b13fab9f44c766944c8573', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:50:38.570101', 1877);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (71, '75aada27dda23ecc9f7a906ee231d767', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:50:52.243455', 2099);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (72, 'bff6e5949a783dd6ac532e8014ad0708', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:50:53.849856', 1462);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (73, '66b45f701e6632a7ae79d6d2dc11b1bf', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:50:58.283107', 1985);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (74, '7cfe6782a72932458114df75d333e34b', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:51:16.627484', 2789);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (75, '15982fc07d553b52b504d003fa560ae5', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "system_settings_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"system_settings_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:51:20.435374', 4677);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (76, 'b0dc9514c60f333d826625107068d72c', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "project_view"}, {"id": "project_edit"}, {"id": "workflow_create"}, {"id": "service_create"}, {"id": "role_create"}, {"id": "sla_manage"}, {"id": "flow_element_manage"}, {"id": "system_settings_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"project_view"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"project_edit"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"workflow_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"service_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"role_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"sla_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"flow_element_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"system_settings_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:51:20.482165', 1587);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (77, '03631f2bd9333f2cb7a69dc27db36e91', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "project_create"}, {"id": "operational_data_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"project_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"operational_data_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:51:20.634025', 1831);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (78, '0305e4ccdb733f33876016544d54a242', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "system_settings_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"system_settings_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:51:20.768502', 1455);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (79, 'fca5f99f2ffe3b7aafdbd12a88a6bc0a', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:52:07.213443', 2874);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (80, '4050cd8e5d9f353780b9be747eb847be', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "system_settings_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"system_settings_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:52:10.367765', 1848);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (81, '65618161c546380bbc9ec73dee3e3ea8', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "project_view"}, {"id": "project_edit"}, {"id": "workflow_create"}, {"id": "service_create"}, {"id": "role_create"}, {"id": "sla_manage"}, {"id": "flow_element_manage"}, {"id": "system_settings_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"project_view"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"project_edit"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"workflow_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"service_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"role_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"sla_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"flow_element_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"system_settings_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:52:10.482051', 2007);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (82, '6944f9aa78063d78a294c73bb08556b0', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "project_create"}, {"id": "operational_data_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"project_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"operational_data_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:52:10.609433', 1602);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (83, 'd376f7a09cf7316281c17d90855d2c33', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "system_settings_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"system_settings_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:52:10.882706', 2688);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (84, 'cb32eab2211f350aa76a4140cf762d25', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:52:41.263482', 2177);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (85, 'bcb095ae7bf936e5a1da882b24ab4d4d', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "project_view"}, {"id": "project_edit"}, {"id": "workflow_create"}, {"id": "service_create"}, {"id": "role_create"}, {"id": "sla_manage"}, {"id": "flow_element_manage"}, {"id": "system_settings_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"project_view"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"project_edit"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"workflow_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"service_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"role_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"sla_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"flow_element_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"system_settings_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:52:49.583417', 1971);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (86, 'ba26c670fcb2315ba5ac1670c887e1de', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "project_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"project_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:52:49.859692', 4894);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (87, 'c81cfd027f2239fd8dbe3ac4a62ab416', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "flow_version_manage"}, {"id": "flow_version_restore"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"flow_version_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"flow_version_restore"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:52:49.859726', 6746);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (88, '87b3ab0996983f6686f623f534cdb7bd', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:52:49.870954', 1532);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (89, '05314c020ecb3117975ec20baa8dac80', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:52:59.332730', 1949);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (90, '9115ec6abc613eacbb0d2b945e74ba91', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "project_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"project_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:53:23.945337', 2110);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (91, '8daf16b186fc3b7db9d15f70b5d8ceb0', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:53:31.558072', 1683);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (92, '29b11ff4070f3b1998acb7982ee974c8', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "operational_data_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"operational_data_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:53:39.091780', 1759);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (93, '0c2cc1d4dc733f65bcf3334d3f448888', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "operational_data_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"operational_data_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:53:39.101510', 8730);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (94, 'c7bd2f966a2732d1b1b7150be18b8dfb', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "operational_data_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"operational_data_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:53:39.105952', 1923);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (95, '1a432cb648383d4d90e22ef5c656aec6', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "operational_data_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"operational_data_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:53:39.185982', 3448);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (96, '8f1548c887683eb690386ebdb98100d3', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "operational_data_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"operational_data_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:53:39.201814', 2631);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (97, 'c55b0cb9fb2c35a99ff5b3cad6445fa7', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "operational_data_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"operational_data_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:53:39.214870', 2393);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (98, 'a18efdc9b57c323387484b330cd53442', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "operational_data_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"operational_data_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:53:39.273575', 2750);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (99, '9b0d10f7a36d31c3b06d4c107b7085fc', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "operational_data_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"operational_data_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:53:39.291882', 1834);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (100, '89c81c4b17be321b99493836b1131e1b', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "operational_data_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"operational_data_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:53:39.299432', 6396);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (101, 'd5b645d384b2395cbff0b60b96241429', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "operational_data_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"operational_data_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:53:39.336522', 4504);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (102, 'e5a95e8681f3387787d5b8a264211e4d', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "operational_data_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"operational_data_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:53:39.354452', 1417);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (103, '57a15ffd92cb371b88d2aa0791ae5a70', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "operational_data_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"operational_data_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:53:39.369229', 1671);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (104, 'bce601c1d9ef3f5d938574ff82387a91', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "project_view"}, {"id": "project_edit"}, {"id": "workflow_create"}, {"id": "service_create"}, {"id": "role_create"}, {"id": "sla_manage"}, {"id": "flow_element_manage"}, {"id": "system_settings_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"project_view"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"project_edit"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"workflow_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"service_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"role_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"sla_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"flow_element_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"system_settings_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:53:47.231205', 1582);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (105, 'a7fd4905a98a3216bbf2854508031d63', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "project_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"project_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:53:47.395227', 2991);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (106, 'b03b12b03d7b35f784246ebef5736edc', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:53:47.409870', 2615);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (107, '8b83d247be823176a6a8462caa5f3473', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "flow_version_manage"}, {"id": "flow_version_restore"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"flow_version_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"flow_version_restore"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:53:47.432636', 2446);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (108, '1bb0b84b4df03fd8a12848fabbac3679', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:53:49.452926', 4618);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (109, '0c05c2f73ddc34b5a4a05280fef7146e', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:53:51.436801', 1750);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (110, '65083b8226b5364c9df1e3209c3ef278', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "service_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"service_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:53:51.441163', 1638);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (111, 'c0bf52fe4f7e3bee8fcaedd251ee9ff7', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "system_settings_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"system_settings_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:53:57.603575', 2102);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (112, '26af8a36361539928b703f94637c6b88', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "project_view"}, {"id": "project_edit"}, {"id": "workflow_create"}, {"id": "service_create"}, {"id": "role_create"}, {"id": "sla_manage"}, {"id": "flow_element_manage"}, {"id": "system_settings_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"project_view"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"project_edit"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"workflow_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"service_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"role_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"sla_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"flow_element_manage"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"system_settings_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:53:57.684607', 1442);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (113, '316de222b60132e0ad4d9d85a777242f', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "project_create"}, {"id": "operational_data_view"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"project_create"},"condition":{"field":"","op":"any","value":[]}},{"action":{"id":"operational_data_view"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:53:57.776432', 1412);
INSERT INTO bk_itsm.Records (id, uid, api_uid, ticket_id, state_id, api_instance_id, remark, method, url, request_message, operator, request_host, status_code, response_message, date_created, duration) VALUES (114, '9cc96070933a3a20af23345ffeca3b3f', '', 0, 0, 0, 'OK', 'POST', 'http://bkiam.service.consul:5001/api/v1/policy/query_by_actions', 'POST http://bkiam.service.consul:5001/api/v1/policy/query_by_actions HTTP/1.1
Host: bkiam.service.consul:5001

{"system": "bk_itsm", "subject": {"type": "user", "id": "admin"}, "actions": [{"id": "system_settings_manage"}], "resources": [], "environment": {}}
', '', '(''10.64.1.198'', 5001)', 200, '{"code":0,"message":"ok","data":[{"action":{"id":"system_settings_manage"},"condition":{"field":"","op":"any","value":[]}}]}', '2022-04-04 19:53:57.895901', 1847);
