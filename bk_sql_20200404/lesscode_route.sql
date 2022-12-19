create table route
(
    id         int auto_increment
        primary key,
    parentId   int default -1 not null comment '父 route 节点的 id，无父节点即为 -1',
    path       varchar(255)   not null comment '路由路径',
    `order`    int default 1  null comment '排序',
    createTime datetime       null comment '创建时间',
    updateTime datetime       null comment '更新时间',
    createUser varchar(255)   null comment '创建人',
    updateUser varchar(255)   null comment '更新人',
    deleteFlag int default 0  null comment '是否删除，1代表已删除'
)
    comment '路由表' charset = utf8mb4;

create index parent_id
    on route (parentId);

INSERT INTO lesscode.route (id, parentId, path, `order`, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (1, -1, '', 1, '2022-04-04 06:34:43', '2022-04-04 06:34:43', 'admin', 'admin', 0);
