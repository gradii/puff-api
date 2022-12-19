create table organization_category
(
    id           int         not null
        primary key,
    type         varchar(32) not null,
    display_name varchar(64) not null,
    domain       varchar(64) not null,
    `default`    tinyint(1)  not null,
    `order`      int         not null,
    constraint domain
        unique (domain)
);

