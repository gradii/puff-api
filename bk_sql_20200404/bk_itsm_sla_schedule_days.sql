create table sla_schedule_days
(
    id          int auto_increment
        primary key,
    schedule_id int not null,
    day_id      int not null,
    constraint sla_schedule_days_schedule_id_day_id_2d9f6494_uniq
        unique (schedule_id, day_id),
    constraint sla_schedule_days_day_id_47bd81af_fk_sla_day_id
        foreign key (day_id) references sla_day (id),
    constraint sla_schedule_days_schedule_id_526fe536_fk_sla_schedule_id
        foreign key (schedule_id) references sla_schedule (id)
);

INSERT INTO bk_itsm.sla_schedule_days (id, schedule_id, day_id) VALUES (1, 1, 1);
INSERT INTO bk_itsm.sla_schedule_days (id, schedule_id, day_id) VALUES (2, 2, 2);
