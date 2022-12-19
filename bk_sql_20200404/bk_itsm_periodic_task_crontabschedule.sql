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

INSERT INTO bk_itsm.periodic_task_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year, timezone) VALUES (1, '0', '4', '*', '*', '*', 'Asia/Shanghai');
INSERT INTO bk_itsm.periodic_task_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year, timezone) VALUES (2, '*/2', '*', '*', '*', '*', 'Asia/Shanghai');
INSERT INTO bk_itsm.periodic_task_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year, timezone) VALUES (3, '*/10', '*', '*', '*', '*', 'Asia/Shanghai');
INSERT INTO bk_itsm.periodic_task_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year, timezone) VALUES (4, '0', '0', '1', '*', '*', 'Asia/Shanghai');
INSERT INTO bk_itsm.periodic_task_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year, timezone) VALUES (5, '*/1', '*', '*', '*', '*', 'Asia/Shanghai');
INSERT INTO bk_itsm.periodic_task_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year, timezone) VALUES (6, '0', '0', '*', '*', '*', 'Asia/Shanghai');
INSERT INTO bk_itsm.periodic_task_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year, timezone) VALUES (7, '0', '*/2', '*', '*', '*', 'Asia/Shanghai');
