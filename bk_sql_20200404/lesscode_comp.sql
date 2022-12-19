create table comp
(
    id              int auto_increment
        primary key,
    type            varchar(255)                       not null comment '自定义组件 id，全局唯一，（要和上传的 config.js 中的 type 一致，自定义组件的标签名）',
    name            varchar(255)                       not null comment '自定义组件名称',
    displayName     varchar(255)                       not null comment '自定义组件中文名称',
    categoryId      int                                not null comment '自定义组件分类',
    belongProjectId int                                not null comment '自定义组件所属项目',
    isPublic        int      default 0                 not null comment '是否公开：0 为公开，1 为不公开',
    status          int      default 0                 not null comment '自定义组件状态：0 为已发布，1 为已下架',
    createTime      datetime default CURRENT_TIMESTAMP null comment '创建时间',
    updateTime      datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '最新更新时间',
    createUser      varchar(255)                       null comment '创建人，默认当前用户',
    updateUser      varchar(255)                       null comment '更新人，默认当前用户',
    deleteFlag      int      default 0                 null comment '是否删除，1代表已删除'
)
    comment '自定义组件表' charset = utf8mb4;

create index belong_project_id
    on comp (belongProjectId);

create index category_id
    on comp (categoryId);

