create table r_page_variable
(
    id         int auto_increment
        primary key,
    projectId  int           not null comment '项目id',
    variableId int           not null comment '变量id',
    pageCode   varchar(255)  null comment '页面pageCode',
    useInfo    mediumtext    null comment '关联情况',
    updateTime datetime      null comment '创建时间',
    createTime datetime      null comment '更新时间',
    createUser varchar(255)  null comment '创建人',
    updateUser varchar(255)  null comment '更新人',
    deleteFlag int default 0 null comment '是否删除，1代表已删除'
);

create index page_code
    on r_page_variable (pageCode);

create index project_id
    on r_page_variable (projectId);

create index variable_d
    on r_page_variable (variableId);

