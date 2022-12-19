create table ticket_ticket_node_status
(
    id        int auto_increment
        primary key,
    ticket_id int not null,
    status_id int not null,
    constraint ticket_ticket_node_status_ticket_id_status_id_fbc7bdc3_uniq
        unique (ticket_id, status_id),
    constraint ticket_ticket_node_status_status_id_85045742_fk_ticket_status_id
        foreign key (status_id) references ticket_status (id),
    constraint ticket_ticket_node_status_ticket_id_58d7dd58_fk_ticket_ticket_id
        foreign key (ticket_id) references ticket_ticket (id)
);

INSERT INTO bk_itsm.ticket_ticket_node_status (id, ticket_id, status_id) VALUES (1, 1, 1);
INSERT INTO bk_itsm.ticket_ticket_node_status (id, ticket_id, status_id) VALUES (2, 1, 2);
INSERT INTO bk_itsm.ticket_ticket_node_status (id, ticket_id, status_id) VALUES (3, 1, 3);
