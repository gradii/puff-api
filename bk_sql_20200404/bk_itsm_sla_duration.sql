create table sla_duration
(
    id         int auto_increment
        primary key,
    creator    varchar(64)  not null,
    create_at  datetime(6)  not null,
    update_at  datetime(6)  not null,
    updated_by varchar(64)  not null,
    is_deleted tinyint(1)   not null,
    name       varchar(255) not null,
    start_time time(6)      not null,
    end_time   time(6)      not null
);

INSERT INTO bk_itsm.sla_duration (id, creator, create_at, update_at, updated_by, is_deleted, name, start_time, end_time) VALUES (1, '', '2022-04-04 18:29:35.529828', '2022-04-04 18:29:35.529855', '', 0, '上午', '08:00:00', '12:00:00');
INSERT INTO bk_itsm.sla_duration (id, creator, create_at, update_at, updated_by, is_deleted, name, start_time, end_time) VALUES (2, '', '2022-04-04 18:29:35.530917', '2022-04-04 18:29:35.530933', '', 0, '下午', '14:00:00', '18:00:00');
INSERT INTO bk_itsm.sla_duration (id, creator, create_at, update_at, updated_by, is_deleted, name, start_time, end_time) VALUES (3, '', '2022-04-04 18:29:35.536921', '2022-04-04 18:29:35.536940', '', 0, '全天', '00:00:00', '23:59:59');
