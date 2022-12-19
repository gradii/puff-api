create table ticket_status_ticketstatusconfig
(
    id           int auto_increment
        primary key,
    creator      varchar(64) not null,
    create_at    datetime(6) not null,
    update_at    datetime(6) not null,
    updated_by   varchar(64) not null,
    is_deleted   tinyint(1)  not null,
    service_type varchar(64) not null,
    configured   tinyint(1)  not null
);

INSERT INTO bk_itsm.ticket_status_ticketstatusconfig (id, creator, create_at, update_at, updated_by, is_deleted, service_type, configured) VALUES (1, 'system', '2022-04-04 18:29:35.847741', '2022-04-04 18:29:35.847770', '', 0, 'change', 1);
INSERT INTO bk_itsm.ticket_status_ticketstatusconfig (id, creator, create_at, update_at, updated_by, is_deleted, service_type, configured) VALUES (2, 'system', '2022-04-04 18:29:35.848322', '2022-04-04 18:29:35.848333', '', 0, 'event', 1);
INSERT INTO bk_itsm.ticket_status_ticketstatusconfig (id, creator, create_at, update_at, updated_by, is_deleted, service_type, configured) VALUES (3, 'system', '2022-04-04 18:29:35.848787', '2022-04-04 18:29:35.848799', '', 0, 'public', 1);
INSERT INTO bk_itsm.ticket_status_ticketstatusconfig (id, creator, create_at, update_at, updated_by, is_deleted, service_type, configured) VALUES (4, 'system', '2022-04-04 18:29:35.849259', '2022-04-04 18:29:35.849269', '', 0, 'question', 1);
INSERT INTO bk_itsm.ticket_status_ticketstatusconfig (id, creator, create_at, update_at, updated_by, is_deleted, service_type, configured) VALUES (5, 'system', '2022-04-04 18:29:35.849669', '2022-04-04 18:29:35.849679', '', 0, 'request', 1);
