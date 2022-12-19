create table ticket_attentionusers
(
    id        int auto_increment
        primary key,
    ticket_id int          not null,
    follower  varchar(255) not null,
    create_at datetime(6)  not null
);

INSERT INTO bk_itsm.ticket_attentionusers (id, ticket_id, follower, create_at) VALUES (1, 1, 'admin', '2022-04-04 19:51:16.227864');
