create table r_func_func
(
    id             int auto_increment
        primary key,
    parentFuncCode varchar(255)  not null comment 'func 表 Code',
    funcCode       varchar(255)  not null comment 'func 表 Code',
    projectId      int           not null comment 'project 表主键',
    createUser     varchar(255)  null comment '创建人',
    updateUser     varchar(255)  null comment '更新人',
    createTime     datetime      null comment '创建时间',
    updateTime     datetime      null comment '更新时间',
    deleteFlag     int default 0 null comment '是否删除，1代表已删除'
)
    comment '函数与函数关联表' charset = utf8mb4;

create index func_code
    on r_func_func (funcCode);

create index parentFuncCode
    on r_func_func (parentFuncCode);

create index project_id
    on r_func_func (projectId);

