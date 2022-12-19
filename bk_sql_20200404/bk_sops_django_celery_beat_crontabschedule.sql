create table django_celery_beat_crontabschedule
(
    id            int auto_increment
        primary key,
    minute        varchar(240) not null,
    hour          varchar(96)  not null,
    day_of_week   varchar(64)  not null,
    day_of_month  varchar(124) not null,
    month_of_year varchar(64)  not null,
    timezone      varchar(63)  not null
);

INSERT INTO bk_sops.django_celery_beat_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year, timezone) VALUES (1, '0', '4', '*', '*', '*', 'Asia/Shanghai');
INSERT INTO bk_sops.django_celery_beat_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year, timezone) VALUES (2, '0', '0', '*', '*', '*', 'Asia/Shanghai');
INSERT INTO bk_sops.django_celery_beat_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year, timezone) VALUES (3, '*/2', '*', '*', '*', '*', 'UTC');
INSERT INTO bk_sops.django_celery_beat_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year, timezone) VALUES (4, '*/10', '*', '*', '*', '*', 'Asia/Shanghai');
