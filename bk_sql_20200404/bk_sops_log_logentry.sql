create table log_logentry
(
    id          bigint auto_increment
        primary key,
    logger_name varchar(128) not null,
    level_name  varchar(32)  not null,
    message     longtext     null,
    exception   longtext     null,
    logged_at   datetime(6)  not null,
    node_id     varchar(32)  not null,
    history_id  int          not null
);

create index log_logentry_level_name_ee3058cb
    on log_logentry (level_name);

create index log_logentry_logged_at_e3b3f283
    on log_logentry (logged_at);

create index log_logentry_logger_name_a74c8312
    on log_logentry (logger_name);

create index log_logentry_node_id_e0d756d9
    on log_logentry (node_id);

