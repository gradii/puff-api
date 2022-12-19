create table sla_schedule_workdays
(
    id          int auto_increment
        primary key,
    schedule_id int not null,
    day_id      int not null,
    constraint sla_schedule_workdays_schedule_id_day_id_2b0ce8f0_uniq
        unique (schedule_id, day_id),
    constraint sla_schedule_workdays_day_id_81c45434_fk_sla_day_id
        foreign key (day_id) references sla_day (id),
    constraint sla_schedule_workdays_schedule_id_9e7ab2f4_fk_sla_schedule_id
        foreign key (schedule_id) references sla_schedule (id)
);

