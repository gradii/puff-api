create table statistics_componentintemplate
(
    id               int auto_increment
        primary key,
    component_code   varchar(255) not null,
    template_id      varchar(32)  not null,
    node_id          varchar(32)  not null,
    is_sub           tinyint(1)   not null,
    subprocess_stack longtext     not null,
    version          varchar(255) not null
);

INSERT INTO bk_sops.statistics_componentintemplate (id, component_code, template_id, node_id, is_sub, subprocess_stack, version) VALUES (3, 'sleep_timer', 'n1f31559765f309a90a23f5ce90b8645', 'nodecab1a218f096fa8d458b7a9e0301', 0, '[]', 'legacy');
