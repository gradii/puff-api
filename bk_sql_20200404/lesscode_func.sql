create table func
(
    id           int auto_increment
        primary key,
    funcName     varchar(255)                                       not null comment '函数名字，项目下唯一',
    funcParams   text                                               null comment '函数参数，逗号分隔字符串',
    funcBody     longtext                                           null comment '函数内容',
    funcGroupId  int                                                not null comment 'function_group 表主键',
    createTime   datetime                 default CURRENT_TIMESTAMP null comment '创建时间',
    updateTime   datetime                 default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '最新更新时间',
    createUser   varchar(255)                                       null comment '创建人，默认当前用户',
    updateUser   varchar(255)                                       null comment '更新人，默认当前用户',
    funcSummary  text                                               null comment '函数简介',
    funcType     int                                                null comment '函数模板类型',
    funcMethod   varchar(255)                                       null comment '远程函数方法',
    withToken    int                      default 0                 null comment '远程方法是否携带Token',
    funcApiData  mediumtext                                         null comment '远程函数数据体',
    publicFlag   int(1) unsigned zerofill default 0                 null comment '是否公开',
    funcApiUrl   varchar(255)                                       null comment '远程函数URL',
    deleteFlag   int                      default 0                 null comment '是否删除，1代表已删除',
    `order`      int                                                null comment '排序',
    remoteParams text                                               null comment '回调函数参数，逗号分隔字符串',
    funcCode     varchar(255)                                       not null comment '函数项目下唯一code'
)
    comment '函数表' charset = utf8mb4;

create index func_group_id
    on func (funcGroupId);

INSERT INTO lesscode.func (id, funcName, funcParams, funcBody, funcGroupId, createTime, updateTime, createUser, updateUser, funcSummary, funcType, funcMethod, withToken, funcApiData, publicFlag, funcApiUrl, deleteFlag, `order`, remoteParams, funcCode) VALUES (1, 'getMockData', null, 'return this.$http.get(''http://lesscode.bktencent.com/api/data/getMockData'').then((res) => {
    const data = JSON.stringify(res)
    alert(data)
    return res.data
})
', 1, '2022-04-04 06:34:43', '2022-04-04 06:34:43', 'admin', 'admin', '获取mock数据', 0, null, 0, null, 0, null, 0, null, null, 'getMockData');
INSERT INTO lesscode.func (id, funcName, funcParams, funcBody, funcGroupId, createTime, updateTime, createUser, updateUser, funcSummary, funcType, funcMethod, withToken, funcApiData, publicFlag, funcApiUrl, deleteFlag, `order`, remoteParams, funcCode) VALUES (2, 'getApiData', null, 'const data = res.data || []
return data
', 1, '2022-04-04 06:34:43', '2022-04-04 06:34:43', 'admin', 'admin', '远程函数，获取数据', 1, 'get', 0, null, 0, 'http://lesscode.bktencent.com/api/data/getMockData', 0, null, 'res', 'getApiData');
