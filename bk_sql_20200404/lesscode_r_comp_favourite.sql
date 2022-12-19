create table r_comp_favourite
(
    id         int auto_increment
        primary key,
    compId     int           not null comment 'comp 表主键',
    projectId  int           not null comment 'project 表主键',
    createUser varchar(255)  null comment '创建人',
    updateUser varchar(255)  null comment '更新人',
    createTime datetime      null comment '创建时间',
    updateTime datetime      null comment '更新时间',
    deleteFlag int default 0 null comment '是否删除，1代表已删除'
)
    comment '组件收藏关联表' charset = utf8mb4;

create index comp_id
    on r_comp_favourite (compId);

create index project_id
    on r_comp_favourite (projectId);

