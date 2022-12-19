create table ticket_ticketsupervisenotifylog
(
    id          int auto_increment
        primary key,
    state_id    int          not null,
    state_name  varchar(64)  null,
    creator     varchar(64)  null,
    create_at   datetime(6)  not null,
    message     longtext     null,
    notify_type varchar(32)  not null,
    is_deleted  tinyint(1)   not null,
    supervised  varchar(255) null,
    ticket_id   int          not null,
    constraint ticket_ticketsupervi_ticket_id_29d29cad_fk_ticket_ti
        foreign key (ticket_id) references ticket_ticket (id)
);

create index ticket_ticketsupervisenotifylog_is_deleted_b69ff6f1
    on ticket_ticketsupervisenotifylog (is_deleted);

