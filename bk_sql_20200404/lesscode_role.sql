create table role
(
    id         int auto_increment
        primary key,
    roleCode   varchar(255)                       not null comment '角色 ID',
    roleName   varchar(255)                       not null comment '角色名称',
    createTime datetime default CURRENT_TIMESTAMP null comment '创建时间',
    updateTime datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '最新更新时间',
    createUser varchar(255)                       null comment '创建人，默认当前用户',
    updateUser varchar(255)                       null comment '更新人，默认当前用户',
    deleteFlag int      default 0                 null comment '是否删除，1代表已删除'
)
    comment '角色表' charset = utf8mb4;

create index role_id
    on role (roleCode);

INSERT INTO lesscode.role (id, roleCode, roleName, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (1, 'root', '超级管理员', '2020-06-03 12:00:59', '2020-06-03 12:00:59', null, null, 0);
INSERT INTO lesscode.role (id, roleCode, roleName, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (2, 'developer', '开发者', '2020-06-03 12:00:59', '2020-06-03 12:00:59', null, null, 0);
INSERT INTO lesscode.role (id, roleCode, roleName, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (3, 'viewer', '预览者', '2020-06-03 12:00:59', '2020-06-03 12:00:59', null, null, 0);
