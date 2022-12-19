create table ticket_ticketglobalvariable
(
    id        int auto_increment
        primary key,
    `key`     varchar(255) not null,
    name      varchar(64)  not null,
    value     longtext     not null,
    state_id  int          null,
    ticket_id int          null,
    create_at datetime(6)  not null,
    update_at datetime(6)  not null
);

INSERT INTO bk_itsm.ticket_ticketglobalvariable (id, `key`, name, value, state_id, ticket_id, create_at, update_at) VALUES (1, 'ef1ecec2fb4d68acbd8f98e7a232c398', '审批结果', '"true"', 4, 1, '2022-04-04 19:51:16.774795', '2022-04-04 19:51:16.774822');
INSERT INTO bk_itsm.ticket_ticketglobalvariable (id, `key`, name, value, state_id, ticket_id, create_at, update_at) VALUES (2, '4047de3c051c98acc6896ede7ea3d0eb', '审批结果', '"true"', 5, 1, '2022-04-04 19:51:55.066207', '2022-04-04 19:51:55.066230');
