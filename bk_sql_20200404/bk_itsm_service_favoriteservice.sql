create table service_favoriteservice
(
    id         int auto_increment
        primary key,
    user       varchar(255) not null,
    service_id int          not null,
    create_at  datetime(6)  not null
);

