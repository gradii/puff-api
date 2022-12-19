create table comp_category
(
    id              int auto_increment
        primary key,
    name            varchar(255)                       not null,
    belongProjectId int                                not null comment '所属项目',
    createTime      datetime default CURRENT_TIMESTAMP null comment '创建时间',
    updateTime      datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '最新更新时间',
    createUser      varchar(255)                       null comment '创建人，默认当前用户',
    updateUser      varchar(255)                       null comment '更新人，默认当前用户',
    deleteFlag      int      default 0                 null comment '是否删除，1代表已删除',
    `order`         int                                not null comment '排序索引'
)
    comment '组件分类表' charset = utf8mb4;

create index belong_project_id
    on comp_category (belongProjectId);

INSERT INTO lesscode.comp_category (id, name, belongProjectId, createTime, updateTime, createUser, updateUser, deleteFlag, `order`) VALUES (1, '默认分类', 1, '2022-04-04 06:34:43', '2022-04-04 06:34:43', 'admin', 'admin', 0, -1);
