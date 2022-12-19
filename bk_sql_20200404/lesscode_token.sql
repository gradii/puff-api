create table token
(
    id           int auto_increment
        primary key,
    token        varchar(255)                       not null comment 'token',
    appCode      varchar(255)                       not null comment 'appCode',
    expiresTime  datetime                           null comment '过期时间',
    createTime   datetime default CURRENT_TIMESTAMP null comment '创建时间',
    updateTime   datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '最新更新时间',
    tokenUser    varchar(255)                       null comment 'token 生成人',
    createUser   varchar(255)                       null comment '创建人，默认当前用户',
    updateUser   varchar(255)                       null comment '更新人，默认当前用户',
    deleteFlag   int      default 0                 null comment '是否删除，1代表已删除',
    refreshToken varchar(255)                       null comment 'refreshToken',
    refreshTime  datetime default CURRENT_TIMESTAMP null comment '刷新token时间'
)
    comment 'token' charset = utf8mb4;

