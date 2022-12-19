create table ticket_tickettemplate
(
    id       int auto_increment
        primary key,
    name     varchar(64) not null,
    creator  varchar(64) not null,
    template longtext    null,
    service  varchar(64) not null
);

