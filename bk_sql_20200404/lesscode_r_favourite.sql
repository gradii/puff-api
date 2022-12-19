create table r_favourite
(
    id         int auto_increment
        primary key,
    userId     int           not null comment 'user 表主键',
    projectId  int           not null comment 'project 表主键',
    updateTime datetime      null comment '创建时间',
    createTime datetime      null comment '更新时间',
    createUser varchar(255)  null comment '创建人',
    updateUser varchar(255)  null comment '更新人',
    deleteFlag int default 0 null comment '是否删除，1代表已删除'
)
    comment '项目收藏表' charset = utf8mb4;

create index project_id
    on r_favourite (projectId);

create index user_id
    on r_favourite (userId);

