create table sla_day_duration
(
    id          int auto_increment
        primary key,
    day_id      int not null,
    duration_id int not null,
    constraint sla_day_duration_day_id_duration_id_cc32dff7_uniq
        unique (day_id, duration_id),
    constraint sla_day_duration_day_id_27fb57e5_fk_sla_day_id
        foreign key (day_id) references sla_day (id),
    constraint sla_day_duration_duration_id_09659b95_fk_sla_duration_id
        foreign key (duration_id) references sla_duration (id)
);

INSERT INTO bk_itsm.sla_day_duration (id, day_id, duration_id) VALUES (1, 1, 1);
INSERT INTO bk_itsm.sla_day_duration (id, day_id, duration_id) VALUES (2, 1, 2);
INSERT INTO bk_itsm.sla_day_duration (id, day_id, duration_id) VALUES (3, 2, 3);
