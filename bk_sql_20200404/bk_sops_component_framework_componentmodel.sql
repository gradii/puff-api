create table component_framework_componentmodel
(
    id      int auto_increment
        primary key,
    code    varchar(255) not null,
    name    varchar(255) not null,
    status  tinyint(1)   not null,
    version varchar(64)  not null,
    constraint component_framework_componentmodel_code_version_1b8e366c_uniq
        unique (code, version)
);

create index component_framework_componentmodel_code_338ba51f
    on component_framework_componentmodel (code);

create index component_framework_componentmodel_version_318ba856
    on component_framework_componentmodel (version);

INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (1, 'bk_http_request', '蓝鲸服务(BK)-HTTP 请求', 1, 'legacy');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (2, 'pause_node', '蓝鲸服务(BK)-暂停', 1, 'legacy');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (3, 'sleep_timer', '蓝鲸服务(BK)-定时', 1, 'legacy');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (4, 'bk_http_request', '蓝鲸服务(BK)-HTTP 请求', 1, 'v1.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (5, 'bk_notify', '蓝鲸服务(BK)-发送通知', 1, 'legacy');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (6, 'bk_approve', '蓝鲸服务(BK)-审核', 1, 'v1.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (7, 'bk_notify', '蓝鲸服务(BK)-发送通知', 1, 'v1.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (8, 'cc_batch_delete_set', '配置平台(CMDB)-删除集群', 1, 'legacy');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (9, 'cc_create_set', '配置平台(CMDB)-创建集群', 1, 'legacy');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (10, 'cc_empty_set_hosts', '配置平台(CMDB)-清空集群中主机', 1, 'legacy');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (11, 'cc_replace_fault_machine', '配置平台(CMDB)-故障机替换', 1, 'legacy');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (12, 'cmdb_transfer_fault_host', '配置平台(CMDB)-转移主机至故障机模块', 1, 'legacy');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (13, 'cc_transfer_host_module', '配置平台(CMDB)-转移主机模块', 1, 'legacy');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (14, 'cmdb_transfer_host_resource', '配置平台(CMDB)-上交主机至资源池', 1, 'legacy');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (15, 'cc_transfer_to_idle', '配置平台(CMDB)-转移主机至空闲机模块', 1, 'legacy');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (16, 'cc_update_host', '配置平台(CMDB)-更新主机属性', 1, 'legacy');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (17, 'cc_update_module', '配置平台(CMDB)-更新模块属性', 1, 'legacy');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (18, 'cc_update_set', '配置平台(CMDB)-更新集群属性', 1, 'legacy');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (19, 'cc_update_set_service_status', '配置平台(CMDB)-修改集群服务状态', 1, 'legacy');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (20, 'cmdb_add_host_lock', '配置平台(CMDB)-主机加锁', 1, 'v1.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (21, 'cmdb_delete_host_lock', '配置平台(CMDB)-主机解锁', 1, 'v1.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (22, 'cc_batch_delete_set', '配置平台(CMDB)-删除集群', 1, 'v1.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (23, 'cc_batch_module_update', '配置平台(CMDB)-批量更新模块属性', 1, '1.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (24, 'cc_batch_transfer_host_module', '配置平台(CMDB)-批量更新主机所属业务模块', 1, '1.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (25, 'cc_batch_update_host', '配置平台(CMDB)-批量修改主机属性', 1, '1.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (26, 'cc_batch_update_set', '配置平台(CMDB)-批量更新集群属性', 1, '1.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (27, 'cc_create_module', '配置平台(CMDB)-创建模块', 1, 'legacy');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (28, 'cc_create_set', '配置平台(CMDB)-创建集群', 1, 'v1.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (29, 'cc_create_set', '配置平台(CMDB)-创建集群', 1, 'v2.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (30, 'cc_create_set_by_template', '配置平台(CMDB)-根据模板创建集群', 1, 'v1.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (31, 'cc_empty_set_hosts', '配置平台(CMDB)-清空集群中主机', 1, 'v1.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (32, 'cc_host_custom_property_change', '配置平台(CMDB)-按规则修改主机自定义属性', 1, 'v1.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (33, 'cc_transfer_host_module', '配置平台(CMDB)-转移主机模块', 1, 'v1.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (34, 'cc_transfer_to_recovery', '配置平台(CMDB)-转移主机至待回收模块', 1, '1.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (35, 'cc_update_module', '配置平台(CMDB)-更新模块属性', 1, 'v1.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (36, 'cc_update_set', '配置平台(CMDB)-更新集群属性', 1, 'v1.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (37, 'cc_update_set_service_status', '配置平台(CMDB)-修改集群服务状态', 1, 'v1.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (38, 'cc_update_set_service_status', '配置平台(CMDB)-修改集群服务状态', 1, '1.1');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (39, 'job_cron_task', '作业平台(JOB)-新建定时作业', 1, 'legacy');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (40, 'job_execute_task', '作业平台(JOB)-执行作业', 1, 'legacy');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (41, 'job_fast_execute_script', '作业平台(JOB)-快速执行脚本', 1, 'legacy');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (42, 'job_fast_push_file', '作业平台(JOB)-快速分发文件', 1, 'legacy');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (43, 'job_fast_push_file', '作业平台(JOB)-快速分发文件', 1, 'v1.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (44, 'job_fast_push_file', '作业平台(JOB)-快速分发文件', 1, 'v2.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (45, 'job_push_local_files', '作业平台(JOB)-分发本地文件', 1, '1.0.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (46, 'job_local_content_upload', '作业平台(JOB)-本地文本框内容上传', 1, '1.0.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (47, 'job_fast_execute_script', '作业平台(JOB)-快速执行脚本', 1, 'v1.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (48, 'job_push_local_files', '作业平台(JOB)-分发本地文件', 1, '2.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (49, 'monitor_alarm_shield', '监控平台(Monitor)-蓝鲸监控告警屏蔽(按范围)', 1, '1.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (50, 'monitor_alarm_shield', '监控平台(Monitor)-蓝鲸监控告警屏蔽(按范围)', 1, '1.1');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (51, 'monitor_alarm_shield_disable', '监控平台(Monitor)-解除告警屏蔽', 1, '1.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (52, 'monitor_alarm_shield_strategy', '监控平台(Monitor)-蓝鲸监控告警屏蔽(按策略)', 1, '1.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (53, 'monitor_alarm_shield_strategy', '监控平台(Monitor)-蓝鲸监控告警屏蔽(按策略)', 1, '1.1');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (54, 'nodeman_create_task', '节点管理(Nodeman)-新建任务', 1, 'legacy');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (55, 'nodeman_create_task', '节点管理(Nodeman)-新建任务', 1, 'v2.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (56, 'nodeman_plugin_operate', '节点管理(Nodeman)-插件操作', 1, 'v1.0');
INSERT INTO bk_sops.component_framework_componentmodel (id, code, name, status, version) VALUES (57, 'wechat_work_send_message', '企业微信(WechatWork)-发送消息', 1, '1.0');
