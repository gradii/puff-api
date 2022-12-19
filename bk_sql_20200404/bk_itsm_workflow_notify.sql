create table workflow_notify
(
    id         int auto_increment
        primary key,
    name       varchar(64) not null,
    is_builtin tinyint(1)  not null,
    type       varchar(32) not null,
    template   longtext    null,
    constraint name
        unique (name)
);

INSERT INTO bk_itsm.workflow_notify (id, name, is_builtin, type, template) VALUES (1, '微信通知', 0, 'WEIXIN', '');
INSERT INTO bk_itsm.workflow_notify (id, name, is_builtin, type, template) VALUES (2, '邮箱通知', 0, 'EMAIL', '');
INSERT INTO bk_itsm.workflow_notify (id, name, is_builtin, type, template) VALUES (3, '短信通知', 0, 'SMS', '');
