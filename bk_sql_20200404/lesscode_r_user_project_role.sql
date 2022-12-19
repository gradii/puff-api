create table r_user_project_role
(
    id         int auto_increment
        primary key,
    userId     int           not null comment 'user 表主键',
    projectId  int           not null comment 'project 表主键',
    updateTime datetime      null comment '创建时间',
    createTime datetime      null comment '更新时间',
    createUser varchar(255)  null comment '创建人',
    updateUser varchar(255)  null comment '更新人',
    roleId     int           not null comment 'role 表主键',
    deleteFlag int default 0 null comment '是否删除，1代表已删除'
)
    comment '用户/项目/角色关联表' charset = utf8mb4;

create index project_id
    on r_user_project_role (projectId);

create index role_id
    on r_user_project_role (roleId);

create index user_id
    on r_user_project_role (userId);

INSERT INTO lesscode.r_user_project_role (id, userId, projectId, updateTime, createTime, createUser, updateUser, roleId, deleteFlag) VALUES (1, 1, 1, '2022-04-04 06:34:43', '2022-04-04 06:34:43', 'admin', 'admin', 1, 0);
