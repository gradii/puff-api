create table core_projectconfig
(
    id                     int auto_increment
        primary key,
    project_id             int          not null,
    executor_proxy         varchar(255) not null,
    executor_proxy_exempts longtext     not null,
    max_periodic_task_num  int          not null
);

