create table django_celery_beat_solarschedule
(
    id        int auto_increment
        primary key,
    event     varchar(24)   not null,
    latitude  decimal(9, 6) not null,
    longitude decimal(9, 6) not null,
    constraint django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq
        unique (event, latitude, longitude)
);

