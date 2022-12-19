create table r_page_comp
(
    id         int auto_increment
        primary key,
    pageId     int           not null comment 'page 表主键',
    compId     int           not null comment 'comp 表主键',
    versionId  int           not null comment 'version 表主键',
    projectId  int           not null comment 'project 表主键',
    createUser varchar(255)  null comment '创建人',
    updateUser varchar(255)  null comment '更新人',
    createTime datetime      null comment '创建时间',
    updateTime datetime      null comment '更新时间',
    deleteFlag int default 0 null comment '是否删除，1代表已删除'
)
    comment '页面组件关联表' charset = utf8mb4;

create index comp_id
    on r_page_comp (compId);

create index page_id
    on r_page_comp (pageId);

create index project_id
    on r_page_comp (projectId);

create index version_id
    on r_page_comp (versionId);

