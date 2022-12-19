create table r_page_func
(
    id         int auto_increment
        primary key,
    pageId     int           not null comment 'page 表主键',
    updateTime datetime      null comment '创建时间',
    createTime datetime      null comment '更新时间',
    createUser varchar(255)  null comment '创建人',
    updateUser varchar(255)  null comment '更新人',
    funcId     int           not null comment 'function 表主键',
    deleteFlag int default 0 null comment '是否删除，1代表已删除',
    projectId  int           not null comment 'project 表主键'
)
    charset = utf8mb4;

create index func_id
    on r_page_func (funcId);

create index page_id
    on r_page_func (pageId);

create index project_id
    on r_page_func (projectId);

