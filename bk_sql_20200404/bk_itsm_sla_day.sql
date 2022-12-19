create table sla_day
(
    id          int auto_increment
        primary key,
    creator     varchar(64)  not null,
    create_at   datetime(6)  not null,
    update_at   datetime(6)  not null,
    updated_by  varchar(64)  not null,
    is_deleted  tinyint(1)   not null,
    name        varchar(255) not null,
    day_of_week varchar(32)  not null,
    type_of_day varchar(32)  not null,
    start_date  date         null,
    end_date    date         null
);

INSERT INTO bk_itsm.sla_day (id, creator, create_at, update_at, updated_by, is_deleted, name, day_of_week, type_of_day, start_date, end_date) VALUES (1, '', '2022-04-04 18:29:35.531714', '2022-04-04 18:29:35.531726', '', 0, '', '0,1,2,3,4', 'NORMAL', null, null);
INSERT INTO bk_itsm.sla_day (id, creator, create_at, update_at, updated_by, is_deleted, name, day_of_week, type_of_day, start_date, end_date) VALUES (2, '', '2022-04-04 18:29:35.537594', '2022-04-04 18:29:35.537606', '', 0, '', '0,1,2,3,4,5,6', 'NORMAL', null, null);
