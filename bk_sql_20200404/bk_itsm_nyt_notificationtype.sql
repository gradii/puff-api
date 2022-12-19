create table nyt_notificationtype
(
    `key`           varchar(128) not null
        primary key,
    label           varchar(128) null,
    content_type_id int          null,
    constraint nyt_notificationtype_content_type_id_18800dea_fk_django_co
        foreign key (content_type_id) references django_content_type (id)
);

