create table ticket_statustransitlog
(
    id          int auto_increment
        primary key,
    from_status varchar(255) not null,
    to_status   varchar(255) not null,
    create_at   datetime(6)  not null,
    ticket_id   int          not null,
    constraint ticket_statustransitlog_ticket_id_365ccae9_fk_ticket_ticket_id
        foreign key (ticket_id) references ticket_ticket (id)
);

INSERT INTO bk_itsm.ticket_statustransitlog (id, from_status, to_status, create_at, ticket_id) VALUES (1, 'DRAFT', 'RUNNING', '2022-04-04 19:51:16.226976', 1);
INSERT INTO bk_itsm.ticket_statustransitlog (id, from_status, to_status, create_at, ticket_id) VALUES (2, 'RUNNING', 'FINISHED', '2022-04-04 19:52:21.963212', 1);
