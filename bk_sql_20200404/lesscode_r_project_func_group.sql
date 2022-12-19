create table r_project_func_group
(
    id          int auto_increment
        primary key,
    projectId   int           not null comment 'project 表主键',
    updateTime  datetime      null comment '创建时间',
    createTime  datetime      null comment '更新时间',
    createUser  varchar(255)  null comment '创建人',
    updateUser  varchar(255)  null comment '更新人',
    funcGroupId int           not null comment 'function 表主键',
    deleteFlag  int default 0 null comment '是否删除，1代表已删除'
)
    comment '项目/函数关联表' charset = utf8mb4;

create index project_id
    on r_project_func_group (projectId);

create index r_project_func_group_ibfk_2
    on r_project_func_group (funcGroupId);

INSERT INTO lesscode.r_project_func_group (id, projectId, updateTime, createTime, createUser, updateUser, funcGroupId, deleteFlag) VALUES (1, 1, '2022-04-04 06:34:43', '2022-04-04 06:34:43', 'admin', 'admin', 1, 0);
