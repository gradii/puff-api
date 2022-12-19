create table ticket_tickettoticket
(
    id             int auto_increment
        primary key,
    related_type   varchar(32) not null,
    creator        varchar(64) null,
    create_at      datetime(6) not null,
    from_ticket_id int         null,
    to_ticket_id   int         null,
    end_at         datetime(6) null,
    is_deleted     tinyint(1)  not null,
    related_status varchar(32) not null,
    update_at      datetime(6) not null,
    updated_by     varchar(64) null,
    constraint ticket_tickettoticke_from_ticket_id_d4ec3dc3_fk_ticket_ti
        foreign key (from_ticket_id) references ticket_ticket (id),
    constraint ticket_tickettoticket_to_ticket_id_bd1735f2_fk_ticket_ticket_id
        foreign key (to_ticket_id) references ticket_ticket (id)
);

create index ticket_tickettoticket_is_deleted_1c2c750d
    on ticket_tickettoticket (is_deleted);

