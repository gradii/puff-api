create table ticket_ticketstatedraft
(
    id        int auto_increment
        primary key,
    creator   varchar(64) not null,
    ticket_id int         not null,
    state_id  int         not null,
    draft     longtext    null
);

