create table core_business
(
    id                  int auto_increment
        primary key,
    cc_id               int          not null,
    cc_name             varchar(256) not null,
    cc_owner            varchar(100) not null,
    cc_company          varchar(100) not null,
    time_zone           varchar(100) not null,
    executor            varchar(100) not null,
    life_cycle          varchar(100) not null,
    always_use_executor tinyint(1)   not null,
    status              varchar(32)  null,
    constraint cc_id
        unique (cc_id)
);

