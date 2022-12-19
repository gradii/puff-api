create table r_project_comp
(
    id           int auto_increment
        primary key,
    projectId    int                       not null comment 'project 表主键',
    updateTime   datetime                  null comment '创建时间',
    createTime   datetime                  null comment '更新时间',
    createUser   varchar(255)              null comment '创建人',
    updateUser   varchar(255)              null comment '更新人',
    compId       int                       not null comment 'component 表主键',
    useVersionId int                       not null comment '当前使用的自定义组件的版本 id',
    pageIds      varchar(255) default '[]' not null comment 'page 表主键的集合',
    deleteFlag   int          default 0    null comment '是否删除，1代表已删除'
)
    comment '项目使用的自定义组件关联表' charset = utf8mb4;

create index category_id
    on r_project_comp (compId);

create index page_id
    on r_project_comp (pageIds);

create index project_id
    on r_project_comp (projectId);

create index useVersionId
    on r_project_comp (useVersionId);

