create table version
(
    id            int auto_increment
        primary key,
    componentId   int                                not null comment 'component 表的主键',
    componentDest varchar(255)                       not null comment '自定义组件路径',
    version       varchar(255)                       not null comment '版本号',
    versionLog    longtext                           not null comment '版本日志',
    description   varchar(255)                       not null comment '组件描述',
    isLast        int                                not null comment '是否是最新版本，0历史版本，1最新版本',
    createTime    datetime default CURRENT_TIMESTAMP null comment '创建时间',
    updateTime    datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '最新更新时间',
    createUser    varchar(255)                       null comment '创建人，默认当前用户',
    updateUser    varchar(255)                       null comment '更新人，默认当前用户',
    deleteFlag    int      default 0                 null comment '是否删除，1代表已删除'
)
    comment '自定义组件版本表' charset = utf8mb4;

create index component_id
    on version (componentId);

