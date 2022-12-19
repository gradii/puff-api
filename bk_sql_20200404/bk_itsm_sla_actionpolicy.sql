create table sla_actionpolicy
(
    id          int auto_increment
        primary key,
    creator     varchar(64)  not null,
    create_at   datetime(6)  not null,
    update_at   datetime(6)  not null,
    updated_by  varchar(64)  not null,
    is_deleted  tinyint(1)   not null,
    name        varchar(255) not null,
    `order`     int          not null,
    `condition` longtext     not null
);

