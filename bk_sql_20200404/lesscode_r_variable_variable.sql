create table r_variable_variable
(
    id               int auto_increment
        primary key,
    projectId        int           not null comment '项目id',
    variableId       int           not null comment '变量id',
    parentVariableId int           not null comment '父级变量Id',
    updateTime       datetime      null comment '创建时间',
    createTime       datetime      null comment '更新时间',
    createUser       varchar(255)  null comment '创建人',
    updateUser       varchar(255)  null comment '更新人',
    deleteFlag       int default 0 null comment '是否删除，1代表已删除'
);

create index project_id
    on r_variable_variable (projectId);

create index variable_d
    on r_variable_variable (parentVariableId);

create index variable_id
    on r_variable_variable (variableId);

