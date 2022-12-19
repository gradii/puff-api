create table sla_engine_slatask
(
    id                int auto_increment
        primary key,
    task_status       varchar(64) not null,
    is_frozen         tinyint(1)  not null,
    sla_status        varchar(64) not null,
    deadline          datetime(6) null,
    start_tick_time   datetime(6) null,
    last_tick_time    datetime(6) null,
    stop_tick_time    datetime(6) null,
    cost_duration     int         not null,
    archived_duration int         not null,
    cost_percent      int         not null,
    sla_id            int         not null,
    ticket_id         int         not null,
    next_tick_time    datetime(6) null,
    constraint ticket_id
        unique (ticket_id),
    constraint sla_engine_slatask_ticket_id_ae3a1fc1_fk_ticket_ticket_id
        foreign key (ticket_id) references ticket_ticket (id)
);

