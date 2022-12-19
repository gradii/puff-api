create table nyt_notification
(
    id              int auto_increment
        primary key,
    message         longtext     not null,
    url             varchar(200) null,
    is_viewed       tinyint(1)   not null,
    is_emailed      tinyint(1)   not null,
    created         datetime(6)  not null,
    occurrences     int unsigned not null,
    subscription_id int          null,
    user_id         int          null,
    modified        datetime(6)  not null,
    constraint nyt_notification_subscription_id_5a132ae1_fk_nyt_subscription_id
        foreign key (subscription_id) references nyt_subscription (id),
    constraint nyt_notification_user_id_acbb5c10_fk_account_user_id
        foreign key (user_id) references account_user (id)
);

