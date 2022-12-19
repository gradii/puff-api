create table service_favorite
(
    id        int auto_increment
        primary key,
    name      varchar(255) not null,
    service   varchar(64)  not null,
    data      longtext     not null,
    create_at datetime(6)  not null,
    update_at datetime(6)  not null,
    user_id   int          not null,
    constraint service_favorite_user_id_17462940_fk_account_user_id
        foreign key (user_id) references account_user (id)
);

