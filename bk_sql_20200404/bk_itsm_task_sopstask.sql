create table task_sopstask
(
    id               int auto_increment
        primary key,
    create_at        datetime(6)  not null,
    update_at        datetime(6)  not null,
    updated_by       varchar(64)  not null,
    is_deleted       tinyint(1)   not null,
    ticket_id        int          not null,
    task_id          varchar(64)  not null,
    task_name        varchar(255) not null,
    sops_template_id int          not null,
    sops_task_id     int          null,
    sops_task_info   longtext     not null,
    sops_task_url    varchar(255) null,
    creator          varchar(64)  not null,
    executor         varchar(64)  not null,
    create_time      datetime(6)  not null,
    start_time       datetime(6)  null,
    finish_time      datetime(6)  null,
    elapsed_time     int          not null,
    state            varchar(64)  not null,
    bk_biz_id        int          not null
);

