create table func_group
(
    id         int auto_increment
        primary key,
    groupName  varchar(255)                       not null comment '函数文件夹名称',
    parentId   int      default -1                not null comment '父 group 节点的 id，无父节点即为 -1',
    createTime datetime default CURRENT_TIMESTAMP null comment '创建时间',
    updateTime datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '最新更新时间',
    createUser varchar(255)                       null comment '创建人，默认当前用户',
    updateUser varchar(255)                       null comment '更新人，默认当前用户',
    `order`    int                                null comment '排序',
    deleteFlag int      default 0                 null comment '是否删除，1代表已删除'
)
    comment '函数分类表' charset = utf8mb4;

INSERT INTO lesscode.func_group (id, groupName, parentId, createTime, updateTime, createUser, updateUser, `order`, deleteFlag) VALUES (1, '默认分类', -1, '2022-04-04 06:34:43', '2022-04-04 06:34:43', 'admin', 'admin', null, 0);
