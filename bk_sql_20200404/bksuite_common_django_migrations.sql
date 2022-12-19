create table django_migrations
(
    id      int auto_increment
        primary key,
    app     varchar(255) not null,
    name    varchar(255) not null,
    applied datetime     not null
);

