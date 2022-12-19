create table r_page_route
(
    id         int auto_increment
        primary key,
    routeId    int           not null comment 'route 表主键',
    pageId     int           not null comment 'page 表主键',
    redirect   int           null comment '跳转 route',
    layoutId   int           not null comment 'layout_inst 表主键',
    projectId  int           not null comment 'project 表主键',
    createTime datetime      null comment '创建时间',
    updateTime datetime      null comment '更新时间',
    createUser varchar(255)  null comment '创建人',
    updateUser varchar(255)  null comment '更新人',
    deleteFlag int default 0 null comment '是否删除，1代表已删除'
)
    comment '页面路由关联表' charset = utf8mb4;

create index layout_id
    on r_page_route (layoutId);

create index page_id
    on r_page_route (pageId);

create index project_id
    on r_page_route (projectId);

create index route_id
    on r_page_route (routeId);

INSERT INTO lesscode.r_page_route (id, routeId, pageId, redirect, layoutId, projectId, createTime, updateTime, createUser, updateUser, deleteFlag) VALUES (1, 1, 1, null, 3, 1, '2022-04-04 06:34:43', '2022-04-04 06:34:43', 'admin', 'admin', 0);
