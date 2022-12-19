create table variable
(
    id               int auto_increment comment '自增主键'
        primary key,
    variableCode     varchar(255)                       not null comment '变量标识',
    variableName     varchar(255)                       not null comment '变量名称',
    projectId        int                                not null comment '项目id',
    pageCode         varchar(255)                       null comment '页面pageCode',
    description      varchar(255)                       null comment '变量说明',
    valueType        int      default 0                 not null comment '值类型',
    defaultValueType int      default 0                 not null comment '默认值类型',
    defaultValue     mediumtext                         not null comment '默认值',
    effectiveRange   int      default 0                 not null comment '生效范围',
    createTime       datetime default CURRENT_TIMESTAMP null comment '创建时间',
    updateTime       datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '最新更新时间',
    createUser       varchar(255)                       null comment '创建人，默认当前用户',
    updateUser       varchar(255)                       null comment '更新人，默认当前用户',
    deleteFlag       int      default 0                 null comment '是否删除，1代表已删除'
);

create index project_id
    on variable (projectId);

