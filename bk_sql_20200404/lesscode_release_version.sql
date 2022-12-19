create table release_version
(
    id           int auto_increment
        primary key,
    releaseType  varchar(20)   null comment '发布类型',
    env          varchar(10)   null comment '部署环境',
    version      varchar(40)   null comment '版本号',
    projectId    int           not null comment '所属项目',
    codeUrl      varchar(255)  null comment '项目源码存放路径',
    status       varchar(20)   null comment '当前状态',
    accessUrl    varchar(60)   null comment '访问url',
    errorMsg     text          null comment '程序报错信息',
    currentStep  varchar(20)   null comment '当前运行阶段',
    deployId     varchar(50)   null comment 'v3部署关联id',
    bindInfo     varchar(100)  null comment '绑定应用和模块名称',
    fromPaasInfo text          null comment '同步paas平台部署信息',
    appCode      varchar(40)   not null comment '本次部署对应应用',
    moduleCode   varchar(40)   not null comment '本次部署对应模块',
    createTime   datetime      null comment '创建时间',
    updateTime   datetime      null comment '更新时间',
    createUser   varchar(255)  null comment '创建人',
    updateUser   varchar(255)  null comment '更新人',
    deleteFlag   int default 0 null comment '是否删除，1代表已删除',
    isOffline    int default 0 null comment '1代表下架操作，0表示部署操作'
)
    comment '版本部署表' charset = utf8mb4;

create index project_id
    on release_version (projectId);

