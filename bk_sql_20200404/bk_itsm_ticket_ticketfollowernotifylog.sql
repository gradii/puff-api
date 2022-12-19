create table ticket_ticketfollowernotifylog
(
    id             int auto_increment
        primary key,
    state_id       int          not null,
    state_name     varchar(64)  null,
    creator        varchar(64)  null,
    create_at      datetime(6)  not null,
    message        longtext     null,
    notify_type    varchar(32)  not null,
    is_deleted     tinyint(1)   not null,
    followers      varchar(255) null,
    followers_type varchar(32)  not null,
    ticket_token   varchar(10)  null,
    is_sys_sended  tinyint(1)   not null,
    ticket_id      int          not null,
    constraint ticket_token
        unique (ticket_token),
    constraint ticket_ticketfollowe_ticket_id_fc812664_fk_ticket_ti
        foreign key (ticket_id) references ticket_ticket (id)
);

create index ticket_ticketfollowernotifylog_is_deleted_88705e4b
    on ticket_ticketfollowernotifylog (is_deleted);

INSERT INTO bk_itsm.ticket_ticketfollowernotifylog (id, state_id, state_name, creator, create_at, message, notify_type, is_deleted, followers, followers_type, ticket_token, is_sys_sended, ticket_id) VALUES (1, 4, '', '', '2022-04-04 19:51:16.809411', '', 'EMAIL', 0, 'admin', 'PERSON', 'PHO31sD', 0, 1);
INSERT INTO bk_itsm.ticket_ticketfollowernotifylog (id, state_id, state_name, creator, create_at, message, notify_type, is_deleted, followers, followers_type, ticket_token, is_sys_sended, ticket_id) VALUES (2, 5, '', '', '2022-04-04 19:51:55.094464', '', 'EMAIL', 0, 'admin', 'PERSON', 'PeHFi2c', 0, 1);
