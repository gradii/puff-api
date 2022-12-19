create table ticket_ticket
(
    id                      int auto_increment
        primary key,
    creator                 varchar(64)  null,
    create_at               datetime(6)  not null,
    update_at               datetime(6)  not null,
    updated_by              varchar(255) not null,
    end_at                  datetime(6)  null,
    is_deleted              tinyint(1)   not null,
    sn                      varchar(64)  not null,
    title                   varchar(128) not null,
    is_draft                tinyint(1)   not null,
    workflow_snap_id        int          not null,
    current_status          varchar(32)  not null,
    current_processors_type varchar(32)  not null,
    current_processors      varchar(255) not null,
    current_state_id        varchar(64)  null,
    service                 varchar(64)  not null,
    service_property        varchar(255) null,
    current_assignor        varchar(255) not null,
    current_assignor_type   varchar(32)  not null,
    is_supervise_needed     tinyint(1)   not null,
    supervise_type          varchar(32)  not null,
    supervisor              varchar(255) null,
    bk_biz_id               int          null,
    catalog_id              int          not null,
    flow_id                 int          not null,
    service_id              int          not null,
    service_type            varchar(64)  not null,
    pipeline_data           longtext     not null,
    pre_status              varchar(32)  not null,
    meta                    longtext     not null,
    priority_key            varchar(255) null,
    current_task_processors varchar(255) not null,
    history_task_processors varchar(255) not null
);

create index ticket_ticket_bk_biz_id_service_id_b0c840b2_idx
    on ticket_ticket (bk_biz_id, service_id);

create index ticket_ticket_create_at_bk_biz_id_servi_52e301da_idx
    on ticket_ticket (create_at, bk_biz_id, service_id, current_status, service_type);

create index ticket_ticket_creator_create_at_8a8145f2_idx
    on ticket_ticket (creator, create_at);

create index ticket_ticket_current_status_create_at_500b61e4_idx
    on ticket_ticket (current_status, create_at);

create index ticket_ticket_is_deleted_82519734
    on ticket_ticket (is_deleted);

create index ticket_ticket_service_id_create_at_63a5baf3_idx
    on ticket_ticket (service_id, create_at);

create index ticket_ticket_sn_7bedce42
    on ticket_ticket (sn);

INSERT INTO bk_itsm.ticket_ticket (id, creator, create_at, update_at, updated_by, end_at, is_deleted, sn, title, is_draft, workflow_snap_id, current_status, current_processors_type, current_processors, current_state_id, service, service_property, current_assignor, current_assignor_type, is_supervise_needed, supervise_type, supervisor, bk_biz_id, catalog_id, flow_id, service_id, service_type, pipeline_data, pre_status, meta, priority_key, current_task_processors, history_task_processors) VALUES (1, 'admin', '2022-04-04 19:51:16.224895', '2022-04-04 19:52:21.973172', ',admin,,', '2022-04-04 19:52:21.971833', 0, 'REQ20220404000001', 'kk', 0, 0, 'FINISHED', '', '', null, 'custom', '{}', '', 'EMPTY', 0, 'EMPTY', '', -1, 2, 1, 1, 'request', '{"pipeline_tree":{"activities":{"3ad960e423a03fc0b70534c219235828":{"id":"3ad960e423a03fc0b70534c219235828","type":"ServiceActivity","name":"\\u63d0\\u5355","optional":false,"error_ignorable":false,"outgoing":"41dab08cb1d13d38939dbc2f305539a5","incoming":["075696bd5a89311dac4c55e2b22769e0"],"component":{"code":"itsm_create","inputs":{"state_id":{"type":"plain","value":"2"}}},"loop":{}},"8c3013f4fae63c79be11c232d8e6afa7":{"id":"8c3013f4fae63c79be11c232d8e6afa7","type":"ServiceActivity","name":"\\u8d1f\\u8d23\\u4eba\\u5ba1\\u6279","optional":false,"error_ignorable":false,"outgoing":"df015797266c3f939cca57bb0f548ec4","incoming":["41dab08cb1d13d38939dbc2f305539a5"],"component":{"code":"itsm_approval_node","inputs":{"state_id":{"type":"plain","value":"4"}}},"loop":{}},"7addf8c1bca839eeb852a7918d51e9b4":{"id":"7addf8c1bca839eeb852a7918d51e9b4","type":"ServiceActivity","name":"\\u7ba1\\u7406\\u5458\\u5ba1\\u6279","optional":false,"error_ignorable":false,"outgoing":"c0e825c62e3832279dd94de73c242993","incoming":["5bd8f303b79c3e258d7a8bcb09935e4d"],"component":{"code":"itsm_approval_node","inputs":{"state_id":{"type":"plain","value":"5"}}},"loop":{}}},"gateways":{"6679b3d3af903230a8c7e79572354931":{"outgoing":["5bd8f303b79c3e258d7a8bcb09935e4d","b1daa4595ddf3204807ca13d8d0d392d"],"incoming":["df015797266c3f939cca57bb0f548ec4"],"name":"","type":"ExclusiveGateway","conditions":{"5bd8f303b79c3e258d7a8bcb09935e4d":{"evaluate":" (''${params_ef1ecec2fb4d68acbd8f98e7a232c398}'' == ''true'') "},"b1daa4595ddf3204807ca13d8d0d392d":{"evaluate":" (''${params_ef1ecec2fb4d68acbd8f98e7a232c398}'' == ''false'') "}},"id":"6679b3d3af903230a8c7e79572354931"}},"flows":{"075696bd5a89311dac4c55e2b22769e0":{"is_default":false,"source":"cf215c27972038bea132f11f2af4a154","id":"075696bd5a89311dac4c55e2b22769e0","target":"3ad960e423a03fc0b70534c219235828"},"41dab08cb1d13d38939dbc2f305539a5":{"is_default":false,"source":"3ad960e423a03fc0b70534c219235828","id":"41dab08cb1d13d38939dbc2f305539a5","target":"8c3013f4fae63c79be11c232d8e6afa7"},"5bd8f303b79c3e258d7a8bcb09935e4d":{"is_default":false,"source":"6679b3d3af903230a8c7e79572354931","id":"5bd8f303b79c3e258d7a8bcb09935e4d","target":"7addf8c1bca839eeb852a7918d51e9b4"},"b1daa4595ddf3204807ca13d8d0d392d":{"is_default":false,"source":"6679b3d3af903230a8c7e79572354931","id":"b1daa4595ddf3204807ca13d8d0d392d","target":"95c0ff2beeb83a909a555461674a05a0"},"df015797266c3f939cca57bb0f548ec4":{"is_default":false,"source":"8c3013f4fae63c79be11c232d8e6afa7","id":"df015797266c3f939cca57bb0f548ec4","target":"6679b3d3af903230a8c7e79572354931"},"c0e825c62e3832279dd94de73c242993":{"is_default":false,"source":"7addf8c1bca839eeb852a7918d51e9b4","id":"c0e825c62e3832279dd94de73c242993","target":"95c0ff2beeb83a909a555461674a05a0"}},"data":{"inputs":{"${ticket_id}":{"type":"plain","value":1},"${params_title}":{"type":"splice","source_act":[{"source_act":"cf215c27972038bea132f11f2af4a154","source_key":"params_title"},{"source_act":"3ad960e423a03fc0b70534c219235828","source_key":"params_title"},{"source_act":"95c0ff2beeb83a909a555461674a05a0","source_key":"params_title"},{"source_act":"8c3013f4fae63c79be11c232d8e6afa7","source_key":"params_title"},{"source_act":"7addf8c1bca839eeb852a7918d51e9b4","source_key":"params_title"}],"value":""},"${params_apply_content}":{"type":"splice","source_act":[{"source_act":"cf215c27972038bea132f11f2af4a154","source_key":"params_apply_content"},{"source_act":"3ad960e423a03fc0b70534c219235828","source_key":"params_apply_content"},{"source_act":"95c0ff2beeb83a909a555461674a05a0","source_key":"params_apply_content"},{"source_act":"8c3013f4fae63c79be11c232d8e6afa7","source_key":"params_apply_content"},{"source_act":"7addf8c1bca839eeb852a7918d51e9b4","source_key":"params_apply_content"}],"value":""},"${params_apply_reason}":{"type":"splice","source_act":[{"source_act":"cf215c27972038bea132f11f2af4a154","source_key":"params_apply_reason"},{"source_act":"3ad960e423a03fc0b70534c219235828","source_key":"params_apply_reason"},{"source_act":"95c0ff2beeb83a909a555461674a05a0","source_key":"params_apply_reason"},{"source_act":"8c3013f4fae63c79be11c232d8e6afa7","source_key":"params_apply_reason"},{"source_act":"7addf8c1bca839eeb852a7918d51e9b4","source_key":"params_apply_reason"}],"value":""},"${params_ticket_sn}":{"type":"splice","source_act":[{"source_act":"cf215c27972038bea132f11f2af4a154","source_key":"params_ticket_sn"},{"source_act":"3ad960e423a03fc0b70534c219235828","source_key":"params_ticket_sn"},{"source_act":"95c0ff2beeb83a909a555461674a05a0","source_key":"params_ticket_sn"},{"source_act":"8c3013f4fae63c79be11c232d8e6afa7","source_key":"params_ticket_sn"},{"source_act":"7addf8c1bca839eeb852a7918d51e9b4","source_key":"params_ticket_sn"}],"value":""},"${params_ticket_title}":{"type":"splice","source_act":[{"source_act":"cf215c27972038bea132f11f2af4a154","source_key":"params_ticket_title"},{"source_act":"3ad960e423a03fc0b70534c219235828","source_key":"params_ticket_title"},{"source_act":"95c0ff2beeb83a909a555461674a05a0","source_key":"params_ticket_title"},{"source_act":"8c3013f4fae63c79be11c232d8e6afa7","source_key":"params_ticket_title"},{"source_act":"7addf8c1bca839eeb852a7918d51e9b4","source_key":"params_ticket_title"}],"value":""},"${params_ticket_ticket_url}":{"type":"splice","source_act":[{"source_act":"cf215c27972038bea132f11f2af4a154","source_key":"params_ticket_ticket_url"},{"source_act":"3ad960e423a03fc0b70534c219235828","source_key":"params_ticket_ticket_url"},{"source_act":"95c0ff2beeb83a909a555461674a05a0","source_key":"params_ticket_ticket_url"},{"source_act":"8c3013f4fae63c79be11c232d8e6afa7","source_key":"params_ticket_ticket_url"},{"source_act":"7addf8c1bca839eeb852a7918d51e9b4","source_key":"params_ticket_ticket_url"}],"value":""},"${params_ticket_creator}":{"type":"splice","source_act":[{"source_act":"cf215c27972038bea132f11f2af4a154","source_key":"params_ticket_creator"},{"source_act":"3ad960e423a03fc0b70534c219235828","source_key":"params_ticket_creator"},{"source_act":"95c0ff2beeb83a909a555461674a05a0","source_key":"params_ticket_creator"},{"source_act":"8c3013f4fae63c79be11c232d8e6afa7","source_key":"params_ticket_creator"},{"source_act":"7addf8c1bca839eeb852a7918d51e9b4","source_key":"params_ticket_creator"}],"value":""},"${params_ticket_create_at}":{"type":"splice","source_act":[{"source_act":"cf215c27972038bea132f11f2af4a154","source_key":"params_ticket_create_at"},{"source_act":"3ad960e423a03fc0b70534c219235828","source_key":"params_ticket_create_at"},{"source_act":"95c0ff2beeb83a909a555461674a05a0","source_key":"params_ticket_create_at"},{"source_act":"8c3013f4fae63c79be11c232d8e6afa7","source_key":"params_ticket_create_at"},{"source_act":"7addf8c1bca839eeb852a7918d51e9b4","source_key":"params_ticket_create_at"}],"value":""},"${params_ticket_service_type}":{"type":"splice","source_act":[{"source_act":"cf215c27972038bea132f11f2af4a154","source_key":"params_ticket_service_type"},{"source_act":"3ad960e423a03fc0b70534c219235828","source_key":"params_ticket_service_type"},{"source_act":"95c0ff2beeb83a909a555461674a05a0","source_key":"params_ticket_service_type"},{"source_act":"8c3013f4fae63c79be11c232d8e6afa7","source_key":"params_ticket_service_type"},{"source_act":"7addf8c1bca839eeb852a7918d51e9b4","source_key":"params_ticket_service_type"}],"value":""},"${params_ticket_current_status}":{"type":"splice","source_act":[{"source_act":"cf215c27972038bea132f11f2af4a154","source_key":"params_ticket_current_status"},{"source_act":"3ad960e423a03fc0b70534c219235828","source_key":"params_ticket_current_status"},{"source_act":"95c0ff2beeb83a909a555461674a05a0","source_key":"params_ticket_current_status"},{"source_act":"8c3013f4fae63c79be11c232d8e6afa7","source_key":"params_ticket_current_status"},{"source_act":"7addf8c1bca839eeb852a7918d51e9b4","source_key":"params_ticket_current_status"}],"value":""},"${params_ticket_current_status_display}":{"type":"splice","source_act":[{"source_act":"cf215c27972038bea132f11f2af4a154","source_key":"params_ticket_current_status_display"},{"source_act":"3ad960e423a03fc0b70534c219235828","source_key":"params_ticket_current_status_display"},{"source_act":"95c0ff2beeb83a909a555461674a05a0","source_key":"params_ticket_current_status_display"},{"source_act":"8c3013f4fae63c79be11c232d8e6afa7","source_key":"params_ticket_current_status_display"},{"source_act":"7addf8c1bca839eeb852a7918d51e9b4","source_key":"params_ticket_current_status_display"}],"value":""},"${params_ticket_bk_biz_id}":{"type":"splice","source_act":[{"source_act":"cf215c27972038bea132f11f2af4a154","source_key":"params_ticket_bk_biz_id"},{"source_act":"3ad960e423a03fc0b70534c219235828","source_key":"params_ticket_bk_biz_id"},{"source_act":"95c0ff2beeb83a909a555461674a05a0","source_key":"params_ticket_bk_biz_id"},{"source_act":"8c3013f4fae63c79be11c232d8e6afa7","source_key":"params_ticket_bk_biz_id"},{"source_act":"7addf8c1bca839eeb852a7918d51e9b4","source_key":"params_ticket_bk_biz_id"}],"value":""},"${params_ticket_current_processors}":{"type":"splice","source_act":[{"source_act":"cf215c27972038bea132f11f2af4a154","source_key":"params_ticket_current_processors"},{"source_act":"3ad960e423a03fc0b70534c219235828","source_key":"params_ticket_current_processors"},{"source_act":"95c0ff2beeb83a909a555461674a05a0","source_key":"params_ticket_current_processors"},{"source_act":"8c3013f4fae63c79be11c232d8e6afa7","source_key":"params_ticket_current_processors"},{"source_act":"7addf8c1bca839eeb852a7918d51e9b4","source_key":"params_ticket_current_processors"}],"value":""},"${params_ticket_sops_task_summary}":{"type":"splice","source_act":[{"source_act":"cf215c27972038bea132f11f2af4a154","source_key":"params_ticket_sops_task_summary"},{"source_act":"3ad960e423a03fc0b70534c219235828","source_key":"params_ticket_sops_task_summary"},{"source_act":"95c0ff2beeb83a909a555461674a05a0","source_key":"params_ticket_sops_task_summary"},{"source_act":"8c3013f4fae63c79be11c232d8e6afa7","source_key":"params_ticket_sops_task_summary"},{"source_act":"7addf8c1bca839eeb852a7918d51e9b4","source_key":"params_ticket_sops_task_summary"}],"value":""},"${params_ticket_all_task_processors}":{"type":"splice","source_act":[{"source_act":"cf215c27972038bea132f11f2af4a154","source_key":"params_ticket_all_task_processors"},{"source_act":"3ad960e423a03fc0b70534c219235828","source_key":"params_ticket_all_task_processors"},{"source_act":"95c0ff2beeb83a909a555461674a05a0","source_key":"params_ticket_all_task_processors"},{"source_act":"8c3013f4fae63c79be11c232d8e6afa7","source_key":"params_ticket_all_task_processors"},{"source_act":"7addf8c1bca839eeb852a7918d51e9b4","source_key":"params_ticket_all_task_processors"}],"value":""},"${params_ef1ecec2fb4d68acbd8f98e7a232c398}":{"type":"splice","source_act":"8c3013f4fae63c79be11c232d8e6afa7","source_key":"params_ef1ecec2fb4d68acbd8f98e7a232c398","value":""},"${params_4047de3c051c98acc6896ede7ea3d0eb}":{"type":"splice","source_act":"7addf8c1bca839eeb852a7918d51e9b4","source_key":"params_4047de3c051c98acc6896ede7ea3d0eb","value":""}},"outputs":[]},"start_event":{"incoming":"","outgoing":"075696bd5a89311dac4c55e2b22769e0","type":"EmptyStartEvent","id":"cf215c27972038bea132f11f2af4a154","name":"\\u5f00\\u59cb"},"end_event":{"incoming":["b1daa4595ddf3204807ca13d8d0d392d","c0e825c62e3832279dd94de73c242993"],"outgoing":"","type":"EmptyEndEvent","id":"95c0ff2beeb83a909a555461674a05a0","name":"\\u7ed3\\u675f"},"id":1},"states_map":{"1":"cf215c27972038bea132f11f2af4a154","2":"3ad960e423a03fc0b70534c219235828","3":"95c0ff2beeb83a909a555461674a05a0","4":"8c3013f4fae63c79be11c232d8e6afa7","5":"7addf8c1bca839eeb852a7918d51e9b4"},"transitions_map":{"075696bd5a89311dac4c55e2b22769e0":"1","41dab08cb1d13d38939dbc2f305539a5":"2","5bd8f303b79c3e258d7a8bcb09935e4d":"3","b1daa4595ddf3204807ca13d8d0d392d":"4","c0e825c62e3832279dd94de73c242993":"5"},"exclusive_gateway_source_state":{"4":"6679b3d3af903230a8c7e79572354931"},"last_flow":"c0e825c62e3832279dd94de73c242993"}', 'RUNNING', '{}', null, '', '');