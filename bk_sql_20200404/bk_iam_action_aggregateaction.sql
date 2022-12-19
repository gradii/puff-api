create table action_aggregateaction
(
    id                      int auto_increment
        primary key,
    system_id               varchar(32) not null,
    action_ids              longtext    not null,
    aggregate_resource_type longtext    not null
);

create index action_aggregateaction_system_id_d8b89a6f_idx
    on action_aggregateaction (system_id);

INSERT INTO bk_iam.action_aggregateaction (id, system_id, action_ids, aggregate_resource_type) VALUES (1, 'bk_bcs_app', '["project_view","project_edit"]', '{"system_id":"bk_bcs_app","id":"project"}');
INSERT INTO bk_iam.action_aggregateaction (id, system_id, action_ids, aggregate_resource_type) VALUES (2, 'bk_cmdb', '["find_business_resource","edit_biz_host","create_biz_topology","edit_biz_topology","delete_biz_topology","create_biz_service_instance","edit_biz_service_instance","delete_biz_service_instance","create_biz_service_template","edit_biz_service_template","delete_biz_service_template","create_biz_set_template","edit_biz_set_template","delete_biz_set_template","create_biz_service_category","edit_biz_service_category","delete_biz_service_category","create_biz_dynamic_query","edit_biz_dynamic_query","delete_biz_dynamic_query","edit_biz_custom_field","edit_biz_host_apply","edit_business","archive_business","find_business"]', '{"system_id":"bk_cmdb","id":"biz"}');
INSERT INTO bk_iam.action_aggregateaction (id, system_id, action_ids, aggregate_resource_type) VALUES (3, 'bk_cmdb', '["create_resource_pool_host","edit_resource_pool_directory","delete_resource_pool_directory"]', '{"system_id":"bk_cmdb","id":"sys_resource_pool_directory"}');
INSERT INTO bk_iam.action_aggregateaction (id, system_id, action_ids, aggregate_resource_type) VALUES (4, 'bk_cmdb', '["edit_resource_pool_host","delete_resource_pool_host"]', '{"system_id":"bk_cmdb","id":"sys_host_rsc_pool_directory"}');
INSERT INTO bk_iam.action_aggregateaction (id, system_id, action_ids, aggregate_resource_type) VALUES (5, 'bk_cmdb', '["create_sys_instance","edit_sys_instance","delete_sys_instance"]', '{"system_id":"bk_cmdb","id":"sys_instance_model"}');
INSERT INTO bk_iam.action_aggregateaction (id, system_id, action_ids, aggregate_resource_type) VALUES (6, 'bk_cmdb', '["edit_cloud_account","delete_cloud_account","find_cloud_account"]', '{"system_id":"bk_cmdb","id":"sys_cloud_account"}');
INSERT INTO bk_iam.action_aggregateaction (id, system_id, action_ids, aggregate_resource_type) VALUES (7, 'bk_cmdb', '["edit_cloud_resource_task","delete_cloud_resource_task","find_cloud_resource_task"]', '{"system_id":"bk_cmdb","id":"sys_cloud_resource_task"}');
INSERT INTO bk_iam.action_aggregateaction (id, system_id, action_ids, aggregate_resource_type) VALUES (8, 'bk_cmdb', '["edit_cloud_area","delete_cloud_area"]', '{"system_id":"bk_cmdb","id":"sys_cloud_area"}');
INSERT INTO bk_iam.action_aggregateaction (id, system_id, action_ids, aggregate_resource_type) VALUES (9, 'bk_cmdb', '["edit_event_subscription","delete_event_subscription","find_event_subscription"]', '{"system_id":"bk_cmdb","id":"sys_event_pushing"}');
INSERT INTO bk_iam.action_aggregateaction (id, system_id, action_ids, aggregate_resource_type) VALUES (10, 'bk_cmdb', '["edit_model_group","delete_model_group"]', '{"system_id":"bk_cmdb","id":"sys_model_group"}');
INSERT INTO bk_iam.action_aggregateaction (id, system_id, action_ids, aggregate_resource_type) VALUES (11, 'bk_cmdb', '["edit_sys_model","delete_sys_model"]', '{"system_id":"bk_cmdb","id":"sys_model"}');
INSERT INTO bk_iam.action_aggregateaction (id, system_id, action_ids, aggregate_resource_type) VALUES (12, 'bk_cmdb', '["edit_association_type","delete_association_type"]', '{"system_id":"bk_cmdb","id":"sys_association_type"}');
INSERT INTO bk_iam.action_aggregateaction (id, system_id, action_ids, aggregate_resource_type) VALUES (13, 'bk_cmdb', '["edit_biz_sensitive","find_biz_sensitive"]', '{"system_id":"bk_cmdb","id":"biz_sensitive"}');
INSERT INTO bk_iam.action_aggregateaction (id, system_id, action_ids, aggregate_resource_type) VALUES (14, 'bk_itsm', '["project_view","project_edit","system_settings_manage","service_create","service_manage","sla_manage","workflow_create","workflow_manage","workflow_deploy","flow_version_restore","flow_version_manage","flow_element_manage","role_create","role_manage","ticket_view"]', '{"system_id":"bk_itsm","id":"project"}');
INSERT INTO bk_iam.action_aggregateaction (id, system_id, action_ids, aggregate_resource_type) VALUES (16, 'bk_log_search', '["view_business","search_log","create_indices","manage_indices","create_collection","view_collection","manage_collection","create_es_source","manage_es_source","view_dashboard","manage_dashboard","manage_extract_config"]', '{"system_id":"bk_cmdb","id":"biz"}');
INSERT INTO bk_iam.action_aggregateaction (id, system_id, action_ids, aggregate_resource_type) VALUES (17, 'bk_monitorv3', '["view_business","view_home","view_dashboard","manage_dashboard","view_host","view_synthetic","manage_synthetic","view_event","view_plugin","manage_plugin","view_collection","manage_collection","view_rule","manage_rule","view_notify_team","manage_notify_team","view_downtime","manage_downtime","view_custom_metric","manage_custom_metric","view_custom_event","manage_custom_event","export_config","import_config","view_service_category","manage_upgrade","view_function_switch","manage_function_switch","explore_metric","manage_host"]', '{"system_id":"bk_cmdb","id":"biz"}');
INSERT INTO bk_iam.action_aggregateaction (id, system_id, action_ids, aggregate_resource_type) VALUES (18, 'bk_sops', '["project_view","project_edit","project_fast_create_task","flow_create","flow_view","flow_edit","flow_delete","flow_create_task","flow_create_mini_app","flow_create_periodic_task","task_view","task_operate","task_edit","task_claim","task_delete","task_clone","mini_app_view","mini_app_edit","mini_app_delete","mini_app_create_task","periodic_task_view","periodic_task_edit","periodic_task_delete"]', '{"system_id":"bk_sops","id":"project"}');
INSERT INTO bk_iam.action_aggregateaction (id, system_id, action_ids, aggregate_resource_type) VALUES (19, 'bk_sops', '["common_flow_delete","common_flow_edit","common_flow_view"]', '{"system_id":"bk_sops","id":"common_flow"}');
INSERT INTO bk_iam.action_aggregateaction (id, system_id, action_ids, aggregate_resource_type) VALUES (20, 'bk_ci', '["project_view","project_edit","project_delete","project_manage","pipeline_view","pipeline_edit","pipeline_create","pipeline_download","pipeline_delete","pipeline_share","pipeline_execute","repertory_view","repertory_edit","repertory_create","repertory_delete","repertory_use","credential_view","credential_edit","credential_create","credential_delete","credential_use","cert_view","cert_edit","cert_create","cert_delete","cert_use","environment_view","environment_edit","environment_create","environment_delete","environment_use","env_node_view","env_node_edit","env_node_create","env_node_delete","env_node_use"]', '{"system_id":"bk_ci","id":"project"}');
INSERT INTO bk_iam.action_aggregateaction (id, system_id, action_ids, aggregate_resource_type) VALUES (21, 'bk_nodeman', '["agent_view","agent_operate","proxy_operate","plugin_view","plugin_operate","task_history_view"]', '{"system_id":"bk_cmdb","id":"biz"}');
INSERT INTO bk_iam.action_aggregateaction (id, system_id, action_ids, aggregate_resource_type) VALUES (22, 'bk_nodeman', '["cloud_edit","cloud_delete","cloud_view"]', '{"system_id":"bk_nodeman","id":"cloud"}');
INSERT INTO bk_iam.action_aggregateaction (id, system_id, action_ids, aggregate_resource_type) VALUES (23, 'bk_nodeman', '["ap_delete","ap_edit","ap_view"]', '{"system_id":"bk_nodeman","id":"ap"}');
INSERT INTO bk_iam.action_aggregateaction (id, system_id, action_ids, aggregate_resource_type) VALUES (24, 'bk_gsekit', '["view_business","manage_process","create_config_template","edit_config_template","delete_config_template","generate_config","release_config","operate_config"]', '{"system_id":"bk_cmdb","id":"biz"}');
INSERT INTO bk_iam.action_aggregateaction (id, system_id, action_ids, aggregate_resource_type) VALUES (25, 'bk_job', '["access_business","quick_execute_script","quick_transfer_file","execute_script","create_script","view_script","manage_script","create_job_template","view_job_template","edit_job_template","delete_job_template","debug_job_template","launch_job_plan","create_job_plan","view_job_plan","edit_job_plan","delete_job_plan","sync_job_plan","create_tag","manage_tag","create_cron","manage_cron","view_history","notification_setting","create_account","manage_account","use_account","view_file_source","create_file_source","manage_file_source"]', '{"system_id":"bk_cmdb","id":"biz"}');