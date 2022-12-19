create table djcelery_crontabschedule
(
    id            int auto_increment
        primary key,
    minute        varchar(64) not null,
    hour          varchar(64) not null,
    day_of_week   varchar(64) not null,
    day_of_month  varchar(64) not null,
    month_of_year varchar(64) not null
);

INSERT INTO bk_iam.djcelery_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year) VALUES (1, '0', '4', '*', '*', '*');
INSERT INTO bk_iam.djcelery_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year) VALUES (2, '0', '0', '*', '*', '*');
INSERT INTO bk_iam.djcelery_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year) VALUES (3, '*', '*', '*', '*', '*');
INSERT INTO bk_iam.djcelery_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year) VALUES (4, '*/5', '*', '*', '*', '*');
INSERT INTO bk_iam.djcelery_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year) VALUES (5, '*/30', '*', '*', '*', '*');
INSERT INTO bk_iam.djcelery_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year) VALUES (6, '0', '2', '*', '*', '*');
INSERT INTO bk_iam.djcelery_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year) VALUES (7, '0', '0', '*', '25', '*');
INSERT INTO bk_iam.djcelery_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year) VALUES (8, '0', '1', '*', '*', '*');
