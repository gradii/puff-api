create table r_comp_share
(
    id              int auto_increment
        primary key,
    compId          int           not null comment 'comp 表主键',
    sourceProjectId int           not null comment '源项目id，project 表主键',
    targetProjectId int           not null comment '目标项目id，project 表主键',
    createUser      varchar(255)  null comment '创建人',
    updateUser      varchar(255)  null comment '更新人',
    createTime      datetime      null comment '创建时间',
    updateTime      datetime      null comment '更新时间',
    deleteFlag      int default 0 null comment '是否删除，1代表已删除'
)
    comment '组件共享关联表' charset = utf8mb4;

create index source_project_id
    on r_comp_share (sourceProjectId);

create index target_project_id
    on r_comp_share (targetProjectId);

