create table sla_schedule_holidays
(
    id          int auto_increment
        primary key,
    schedule_id int not null,
    day_id      int not null,
    constraint sla_schedule_holidays_schedule_id_day_id_88f70b16_uniq
        unique (schedule_id, day_id),
    constraint sla_schedule_holidays_day_id_e663e994_fk_sla_day_id
        foreign key (day_id) references sla_day (id),
    constraint sla_schedule_holidays_schedule_id_bbc52336_fk_sla_schedule_id
        foreign key (schedule_id) references sla_schedule (id)
);

