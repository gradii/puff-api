create table project
(
    id          int auto_increment comment '自增主键'
        primary key,
    projectCode varchar(255)                       not null comment '项目 ID 即英文名称',
    projectName varchar(255)                       not null comment '项目名称',
    projectDesc varchar(255)                       null comment '项目简介',
    status      int      default 0                 not null comment '项目状态：0 为正常，1 为私有',
    appCode     varchar(100)                       null comment '绑定蓝鲸应用名称',
    moduleCode  varchar(100)                       null comment '绑定应用模块名称',
    createTime  datetime default CURRENT_TIMESTAMP null comment '创建时间',
    updateTime  datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '最新更新时间',
    createUser  varchar(255)                       null comment '创建人，默认当前用户',
    updateUser  varchar(255)                       null comment '更新人，默认当前用户',
    deleteFlag  int      default 0                 null comment '是否删除，1代表已删除'
)
    comment '项目表' charset = utf8mb4;

INSERT INTO lesscode.project (id, projectCode, projectName, projectDesc, status, appCode, moduleCode, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (1, 'demo', 'Demo项目', '欢迎使用蓝鲸可视化开发平台，这是为您提供的Demo项目，欢迎体验。', 0, null, null, '2022-04-04 06:34:43', '2022-04-04 06:34:43', 'admin', 'admin', 0);
