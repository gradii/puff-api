create table user
(
    id         int auto_increment
        primary key,
    username   varchar(255)                       null comment '系统的用户名（内部版为企业微信，外部版为注册的用户名）',
    qq         int                                null comment 'QQ 账号（外部版）',
    wx         varchar(255)                       null comment '微信账号（外部版）',
    bk         varchar(255)                       null comment '企业版/社区版账号（外部版）',
    createTime datetime default CURRENT_TIMESTAMP null comment '创建时间',
    updateTime datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '最新更新时间',
    createUser varchar(255)                       null comment '创建人，默认当前用户',
    updateUser varchar(255)                       null comment '更新人，默认当前用户',
    deleteFlag int      default 0                 null comment '是否删除，1代表已删除'
)
    comment '用户表' charset = utf8mb4;

INSERT INTO lesscode.user (id, username, qq, wx, bk, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (1, 'admin', null, null, 'admin', '2022-04-04 06:34:43', '2022-04-04 06:34:43', null, null, 0);
