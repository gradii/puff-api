create table component_framework_componentmodel
(
    id      int auto_increment
        primary key,
    code    varchar(255) not null,
    name    varchar(255) not null,
    status  tinyint(1)   not null,
    version varchar(64)  not null
);

INSERT INTO bk_itsm.component_framework_componentmodel (id, code, name, status, version) VALUES (1, 'example_component', 'Examples-example component', 1, 'legacy');
INSERT INTO bk_itsm.component_framework_componentmodel (id, code, name, status, version) VALUES (2, 'pipe_example_component', 'Examples-pipe example component', 1, 'legacy');
INSERT INTO bk_itsm.component_framework_componentmodel (id, code, name, status, version) VALUES (3, 'bk_sops', 'Bk_Sops-标准运维', 1, 'legacy');
INSERT INTO bk_itsm.component_framework_componentmodel (id, code, name, status, version) VALUES (4, 'itsm_sign', 'Itsm_Sign-会签原子', 1, 'legacy');
INSERT INTO bk_itsm.component_framework_componentmodel (id, code, name, status, version) VALUES (5, 'itsm_approval_node', 'Itsm_Approval_Node-审批节点原子', 1, 'legacy');
INSERT INTO bk_itsm.component_framework_componentmodel (id, code, name, status, version) VALUES (6, 'itsm_approve', 'Itsm_Approve-审批原子', 1, 'legacy');
INSERT INTO bk_itsm.component_framework_componentmodel (id, code, name, status, version) VALUES (7, 'itsm_auto', 'Itsm_Auto-自动节点', 1, 'legacy');
INSERT INTO bk_itsm.component_framework_componentmodel (id, code, name, status, version) VALUES (8, 'itsm_create', 'Itsm_Create-提单原子', 1, 'legacy');
INSERT INTO bk_itsm.component_framework_componentmodel (id, code, name, status, version) VALUES (9, 'itsm_migrate', 'Itsm_Migrate-审批迁移原子', 1, 'legacy');
INSERT INTO bk_itsm.component_framework_componentmodel (id, code, name, status, version) VALUES (10, 'normal_task', 'Normal_Task-普通任务', 1, 'legacy');
INSERT INTO bk_itsm.component_framework_componentmodel (id, code, name, status, version) VALUES (11, 'sops_task', 'Sops_Task-标准运维任务', 1, 'legacy');
