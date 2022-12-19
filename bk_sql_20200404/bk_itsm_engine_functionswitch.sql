create table engine_functionswitch
(
    id          int auto_increment
        primary key,
    name        varchar(32) not null,
    description longtext    not null,
    is_active   tinyint(1)  not null,
    constraint engine_functionswitch_name_4eaabfd5_uniq
        unique (name)
);

INSERT INTO bk_itsm.engine_functionswitch (id, name, description, is_active) VALUES (1, 'FREEZE_ENGINE', '用于冻结引擎, 冻结期间会屏蔽所有内部信号及暂停所有进程，同时拒绝所有流程控制请求', 0);
