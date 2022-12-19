create table profiles_profiletokenholder
(
    id          int auto_increment
        primary key,
    create_time datetime(6)  not null,
    update_time datetime(6)  not null,
    token       varchar(128) not null,
    enabled     tinyint(1)   not null,
    expire_time datetime(6)  not null,
    profile_id  int          not null,
    constraint profiles_profiletoke_profile_id_57289c20_fk_profiles_
        foreign key (profile_id) references profiles_profile (id)
);

