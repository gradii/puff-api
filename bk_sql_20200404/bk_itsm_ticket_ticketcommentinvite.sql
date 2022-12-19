create table ticket_ticketcommentinvite
(
    id          int auto_increment
        primary key,
    create_at   datetime(6) not null,
    comment_id  int         not null,
    code        varchar(10) not null,
    notify_type varchar(32) not null,
    receiver    varchar(64) not null,
    constraint code
        unique (code),
    constraint ticket_ticketcomment_comment_id_acd0e82d_fk_ticket_ti
        foreign key (comment_id) references ticket_ticketcomment (id)
);

