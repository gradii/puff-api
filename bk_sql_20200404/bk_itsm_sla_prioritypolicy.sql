create table sla_prioritypolicy
(
    id          int auto_increment
        primary key,
    creator     varchar(64)  not null,
    create_at   datetime(6)  not null,
    update_at   datetime(6)  not null,
    updated_by  varchar(64)  not null,
    is_deleted  tinyint(1)   not null,
    name        varchar(255) not null,
    priority    varchar(255) not null,
    handle_time int          not null,
    handle_unit varchar(32)  not null,
    schedule_id int          not null,
    constraint sla_prioritypolicy_schedule_id_49fdf40c_fk_sla_schedule_id
        foreign key (schedule_id) references sla_schedule (id)
);

INSERT INTO bk_itsm.sla_prioritypolicy (id, creator, create_at, update_at, updated_by, is_deleted, name, priority, handle_time, handle_unit, schedule_id) VALUES (1, '', '2022-04-04 18:29:35.541514', '2022-04-04 18:29:35.541525', '', 0, '', '1', 1, 'h', 1);
INSERT INTO bk_itsm.sla_prioritypolicy (id, creator, create_at, update_at, updated_by, is_deleted, name, priority, handle_time, handle_unit, schedule_id) VALUES (2, '', '2022-04-04 18:29:35.542313', '2022-04-04 18:29:35.542324', '', 0, '', '2', 1, 'h', 1);
INSERT INTO bk_itsm.sla_prioritypolicy (id, creator, create_at, update_at, updated_by, is_deleted, name, priority, handle_time, handle_unit, schedule_id) VALUES (3, '', '2022-04-04 18:29:35.542937', '2022-04-04 18:29:35.542949', '', 0, '', '3', 1, 'h', 1);
INSERT INTO bk_itsm.sla_prioritypolicy (id, creator, create_at, update_at, updated_by, is_deleted, name, priority, handle_time, handle_unit, schedule_id) VALUES (4, '', '2022-04-04 18:29:35.546329', '2022-04-04 18:29:35.546340', '', 0, '', '1', 1, 'h', 2);
INSERT INTO bk_itsm.sla_prioritypolicy (id, creator, create_at, update_at, updated_by, is_deleted, name, priority, handle_time, handle_unit, schedule_id) VALUES (5, '', '2022-04-04 18:29:35.546956', '2022-04-04 18:29:35.546967', '', 0, '', '2', 1, 'h', 2);
INSERT INTO bk_itsm.sla_prioritypolicy (id, creator, create_at, update_at, updated_by, is_deleted, name, priority, handle_time, handle_unit, schedule_id) VALUES (6, '', '2022-04-04 18:29:35.547581', '2022-04-04 18:29:35.547592', '', 0, '', '3', 1, 'h', 2);
