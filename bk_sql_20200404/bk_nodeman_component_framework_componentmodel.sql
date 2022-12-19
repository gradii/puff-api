create table component_framework_componentmodel
(
    id      int auto_increment
        primary key,
    code    varchar(255) not null,
    name    varchar(255) not null,
    status  tinyint(1)   not null,
    version varchar(64)  not null
);

INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (1, 'job_push_config_file', 'Job-JobPushConfigFileComponent', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (2, 'job_fast_execute_script', 'Job-JobFastExecuteScriptComponent', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (3, 'job_fast_push_file', 'Job-JobFastPushFileComponent', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (4, 'job_push_multiple_config_file', 'Job-JobPushMultipleConfigFileComponent', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (5, 'job_allocate_port', 'Job-JobAllocatePortComponent', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (6, 'push_file_to_proxy', 'Job-PushFileToProxyComponent', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (7, 'job_bulk_push_file', 'Bulk_Job-JobBulkPushFileComponent', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (8, 'bulk_push_upgrade_package', 'Bulk_Job-批量下发升级包', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (9, 'job_bulk_push_file_v2', 'Bulk_Job_Redis-JobBulkPushFileV2Component', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (10, 'bulk_push_upgrade_package_v2', 'Bulk_Job_Redis-批量下发升级包', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (11, 'gse_start_process', 'Gse-GseStartProcessComponent', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (12, 'gse_restart_process', 'Gse-GseRestartProcessComponent', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (13, 'gse_stop_process', 'Gse-GseStopProcessComponent', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (14, 'gse_reload_process', 'Gse-GseReloadProcessComponent', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (15, 'gse_delegate_process', 'Gse-GseDelegateProcessComponent', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (16, 'gse_undelegate_process', 'Gse-GseDelegateProcessComponent', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (17, 'update_host_process_status', 'Plugin-UpdateHostProcessStatus', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (18, 'check_agent_status', 'Agent-检查Agent状态', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (19, 'render_and_push_config', 'Plugin-RenderAndPushConfig', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (20, 'reset_retry_times', 'Plugin-ResetRetryTimes', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (21, 'shang_yun_un_delegate', 'Plugin-ShangYunUnDelegate', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (22, 'check_os_type_supported', 'Plugin-CheckOsTypeSupported', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (23, 'query_tjj_password', 'Agent-查询铁将军密码', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (24, 'choose_access_point', 'Agent-选择接入点', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (25, 'configure_policy', 'Agent-配置策略', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (26, 'install', 'Agent-安装', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (27, 'uninstall', 'Agent-卸载', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (28, 'push_upgrade_package', 'Agent-升级', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (29, 'run_upgrade_command', 'Agent-升级', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (30, 'restart', 'Agent-重启', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (31, 'get_agent_status', 'Agent-查询Agent状态', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (32, 'update_process_status', 'Agent-更新主机进程状态', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (33, 'register_host_to_cmdb', 'Agent-注册主机到配置平台', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (34, 'update_job_status', 'Agent-更新任务状态', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (35, 'operate_plugin', 'Agent-操作插件', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (36, 'wait', 'Agent-等待', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (37, 'render_and_push_gse_config', 'Agent-渲染并下发Agent配置', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (38, 'reload_agent_config', 'Agent-重载Agent配置', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (39, 'check_policy_gse_to_proxy', 'Agent-检测GSE Server到Proxy策略', 1, 'legacy');
INSERT INTO bk_nodeman.component_framework_componentmodel (id, code, name, status, version) VALUES (40, 'create_and_start_task', 'Sops-CreateAndStartTaskComponent', 1, 'legacy');
