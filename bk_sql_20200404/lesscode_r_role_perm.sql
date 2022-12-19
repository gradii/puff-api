create table r_role_perm
(
    id         int auto_increment
        primary key,
    roleId     int           not null comment 'role 表主键',
    permId     int           not null comment 'perm 表主键',
    updateTime datetime      null comment '创建时间',
    createTime datetime      null comment '更新时间',
    createUser varchar(255)  null comment '创建人',
    updateUser varchar(255)  null comment '更新人',
    deleteFlag int default 0 null comment '是否删除，1代表已删除'
)
    comment '角色/权限关联表' charset = utf8mb4;

create index operate_id
    on r_role_perm (permId);

create index perm_id
    on r_role_perm (roleId);

INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (1, 1, 1, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (2, 1, 2, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (3, 1, 3, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (4, 1, 4, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (5, 1, 5, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (6, 1, 6, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (7, 1, 7, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (8, 1, 8, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (9, 1, 9, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (10, 1, 10, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (11, 1, 11, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (12, 1, 12, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (13, 1, 13, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (14, 1, 14, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (15, 1, 15, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (16, 1, 16, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (17, 1, 17, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (21, 1, 18, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (22, 1, 19, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (23, 1, 20, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (24, 2, 5, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (25, 2, 6, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (26, 2, 7, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (27, 2, 8, null, null, null, null, 1);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (28, 2, 9, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (29, 2, 10, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (30, 2, 11, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (31, 2, 12, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (32, 2, 13, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (33, 2, 14, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (34, 2, 15, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (35, 2, 16, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (36, 2, 17, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (37, 3, 11, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (38, 1, 21, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (39, 1, 22, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (40, 1, 23, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (41, 1, 24, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (42, 1, 25, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (43, 1, 26, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (44, 1, 27, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (45, 1, 28, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (46, 1, 29, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (47, 1, 30, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (48, 1, 31, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (49, 1, 32, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (50, 1, 33, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (51, 1, 34, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (52, 2, 31, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (53, 2, 32, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (54, 2, 33, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (55, 2, 34, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (56, 1, 35, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (57, 1, 36, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (58, 2, 35, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (59, 3, 36, null, null, null, null, 0);
INSERT INTO lesscode.r_role_perm (id, roleId, permId, updateTime, createTime, createUser, updateUser, deleteFlag) VALUES (60, 1, 37, null, null, null, null, 0);
