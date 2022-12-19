create table django_celery_beat_clockedschedule
(
    id           int auto_increment
        primary key,
    clocked_time datetime(6) not null,
    enabled      tinyint(1)  not null
);

