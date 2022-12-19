create table periodic_task_crontabschedule
(
    id            int auto_increment
        primary key,
    minute        varchar(64) not null,
    hour          varchar(64) not null,
    day_of_week   varchar(64) not null,
    day_of_month  varchar(64) not null,
    month_of_year varchar(64) not null,
    timezone      varchar(63) not null
);

