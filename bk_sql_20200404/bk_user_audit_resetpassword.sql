create table audit_resetpassword
(
    id          int auto_increment
        primary key,
    create_time datetime(6) not null,
    update_time datetime(6) not null,
    operator    varchar(32) null,
    extra_value longtext    null,
    token       char(32)    null,
    is_success  tinyint(1)  not null,
    profile_id  int         not null,
    password    longtext    not null,
    constraint audit_resetpassword_profile_id_42c135e1_fk_profiles_profile_id
        foreign key (profile_id) references profiles_profile (id)
);

create index audit_resetpassword_token_8d3a555b
    on audit_resetpassword (token);

