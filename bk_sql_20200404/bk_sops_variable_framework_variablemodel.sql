create table variable_framework_variablemodel
(
    id     int auto_increment
        primary key,
    code   varchar(255) not null,
    status tinyint(1)   not null,
    constraint code
        unique (code)
);

INSERT INTO bk_sops.variable_framework_variablemodel (id, code, status) VALUES (1, 'bk_user_selector', 1);
INSERT INTO bk_sops.variable_framework_variablemodel (id, code, status) VALUES (2, 'input', 1);
INSERT INTO bk_sops.variable_framework_variablemodel (id, code, status) VALUES (3, 'textarea', 1);
INSERT INTO bk_sops.variable_framework_variablemodel (id, code, status) VALUES (4, 'datetime', 1);
INSERT INTO bk_sops.variable_framework_variablemodel (id, code, status) VALUES (5, 'int', 1);
INSERT INTO bk_sops.variable_framework_variablemodel (id, code, status) VALUES (6, 'password', 1);
INSERT INTO bk_sops.variable_framework_variablemodel (id, code, status) VALUES (7, 'select', 1);
INSERT INTO bk_sops.variable_framework_variablemodel (id, code, status) VALUES (8, 'format_support_current_time', 1);
INSERT INTO bk_sops.variable_framework_variablemodel (id, code, status) VALUES (9, 'current_time', 1);
INSERT INTO bk_sops.variable_framework_variablemodel (id, code, status) VALUES (10, 'date', 1);
INSERT INTO bk_sops.variable_framework_variablemodel (id, code, status) VALUES (11, 'time', 1);
INSERT INTO bk_sops.variable_framework_variablemodel (id, code, status) VALUES (12, 'staff_group_selector', 1);
INSERT INTO bk_sops.variable_framework_variablemodel (id, code, status) VALUES (13, 'datatable', 1);
INSERT INTO bk_sops.variable_framework_variablemodel (id, code, status) VALUES (14, 'ip', 1);
INSERT INTO bk_sops.variable_framework_variablemodel (id, code, status) VALUES (15, 'ip_selector', 1);
INSERT INTO bk_sops.variable_framework_variablemodel (id, code, status) VALUES (16, 'set_allocation', 1);
INSERT INTO bk_sops.variable_framework_variablemodel (id, code, status) VALUES (17, 'attribute_query', 1);
INSERT INTO bk_sops.variable_framework_variablemodel (id, code, status) VALUES (18, 'set_module_ip_selector', 1);
INSERT INTO bk_sops.variable_framework_variablemodel (id, code, status) VALUES (19, 'set_filter_selector', 1);
INSERT INTO bk_sops.variable_framework_variablemodel (id, code, status) VALUES (20, 'set_group_selector', 1);
INSERT INTO bk_sops.variable_framework_variablemodel (id, code, status) VALUES (21, 'set_module_selector', 1);
