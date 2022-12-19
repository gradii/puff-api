create table perm
(
    id         int auto_increment
        primary key,
    permCode   varchar(255)                       not null,
    permDesc   varchar(255)                       not null,
    createTime datetime default CURRENT_TIMESTAMP null comment '创建时间',
    updateTime datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '最新更新时间',
    createUser varchar(255)                       null comment '创建人，默认当前用户',
    updateUser varchar(255)                       null comment '更新人，默认当前用户',
    deleteFlag int      default 0                 null comment '是否删除，1代表已删除'
)
    comment '权限表' charset = utf8mb4;

INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (1, 'create_project', '创建项目', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (2, 'update_project', '更新项目', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (3, 'delete_project', '删除项目', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (4, 'copy_project', '复制项目', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (5, 'download_project', '下载项目源码', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (6, 'create_page', '创建页面', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (7, 'update_page', '更新页面', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (8, 'delete_page', '删除页面', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (9, 'copy_page', '复制页面', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (10, 'download_page', '下载页面源码', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (11, 'preview_page', '预览页面', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (12, 'offline_component', '下架自定义组件', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (13, 'online_component', '上线自定义组件', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (14, 'public_component', '公开自定义组件', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (15, 'private_component', '私有自定义组件', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (16, 'update_component', '更新自定义组件', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (17, 'view_component', '查看项目中的自定义组件', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (18, 'view_component_category', '查看自定义组件的分类', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (19, 'add_component_category', '添加自定义组件的分类', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (20, 'update_component_category', '更新自定义组件的分类', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (21, 'delete_component_category', '删除自定义组件的分类', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (22, 'add_user', '添加项目成员', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (23, 'update_user', '更新项目成员', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (24, 'delete_user', '删除项目成员', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (25, 'delete_component', '删除自定义组件', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (26, 'delete_func_group', '删除函数分类', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (27, 'delete_func', '删除函数', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (28, 'delete_member', '删除成员', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (29, 'add_member', '添加成员', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (30, 'edit_member', '编辑成员', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (31, 'add_func', '创建函数', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (32, 'update_func', '更新函数', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (33, 'add_func_group', '添加函数分类', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (34, 'update_func_group', '更新函数分类', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (35, 'add_component', '创建自定义组件', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (36, 'update-using-version_component', '升级使用中的自定义组件', '2020-06-03 12:00:38', '2020-06-03 12:00:38', null, null, 0);
INSERT INTO lesscode.perm (id, permCode, permDesc, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (37, 'delete_variable', '删除变量', '2021-04-12 12:00:38', '2021-04-12 12:00:38', null, null, 0);
