create table audit_login
(
    id          int auto_increment
        primary key,
    create_time datetime(6) not null,
    update_time datetime(6) not null,
    operator    varchar(32) null,
    extra_value longtext    null,
    is_success  tinyint(1)  not null,
    reason      varchar(32) null,
    profile_id  int         not null,
    constraint audit_login_profile_id_d2798646_fk_profiles_profile_id
        foreign key (profile_id) references profiles_profile (id)
);

INSERT INTO bk_user.audit_login (id, create_time, update_time, operator, extra_value, is_success, reason, profile_id) VALUES (1, '2022-04-04 10:25:12.508002', '2022-04-04 10:25:12.508121', null, '{"client_ip":"10.64.1.198"}', 1, null, 1);
