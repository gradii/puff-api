create table nyt_subscription
(
    id                   int auto_increment
        primary key,
    settings_id          int          not null,
    notification_type_id varchar(128) not null,
    object_id            varchar(64)  null,
    send_emails          tinyint(1)   not null,
    latest_id            int          null,
    constraint nyt_subscription_latest_id_bbb7d98b_fk_nyt_notification_id
        foreign key (latest_id) references nyt_notification (id),
    constraint nyt_subscription_notification_type_id_ca8af379_fk_nyt_notif
        foreign key (notification_type_id) references nyt_notificationtype (`key`),
    constraint nyt_subscription_settings_id_761bae06_fk_nyt_settings_id
        foreign key (settings_id) references nyt_settings (id)
);

