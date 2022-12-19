create table ticket_ticketcomment
(
    id         int auto_increment
        primary key,
    stars      int          not null,
    comments   varchar(255) null,
    source     varchar(64)  not null,
    creator    varchar(64)  null,
    create_at  datetime(6)  not null,
    update_at  datetime(6)  not null,
    is_deleted tinyint(1)   not null,
    ticket_id  int          not null,
    constraint ticket_ticketcomment_ticket_id_8e86949a_uniq
        unique (ticket_id),
    constraint ticket_ticketcomment_ticket_id_8e86949a_fk_ticket_ticket_id
        foreign key (ticket_id) references ticket_ticket (id)
);

INSERT INTO bk_itsm.ticket_ticketcomment (id, stars, comments, source, creator, create_at, update_at, is_deleted, ticket_id) VALUES (1, 0, null, 'SYS', 'admin', '2022-04-04 19:52:21.975716', '2022-04-04 19:52:21.975729', 0, 1);
