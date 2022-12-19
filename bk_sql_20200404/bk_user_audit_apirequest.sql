create table audit_apirequest
(
    id          int auto_increment
        primary key,
    create_time datetime(6) not null,
    update_time datetime(6) not null,
    operator    varchar(32) null,
    extra_value longtext    null,
    uri         varchar(64) not null,
    time_cost   double      not null,
    method      varchar(32) not null,
    status      int         not null
);

