create table profiles_profile
(
    id                   int auto_increment
        primary key,
    create_time          datetime(6)  not null,
    update_time          datetime(6)  not null,
    username             varchar(255) not null,
    qq                   varchar(64)  not null,
    email                varchar(255) null,
    telephone            varchar(255) null,
    wx_userid            varchar(255) null,
    wx_openid            varchar(255) null,
    domain               varchar(64)  null,
    category_id          int          null,
    display_name         varchar(255) null,
    logo                 longtext     null,
    password             varchar(255) null,
    status               varchar(64)  not null,
    staff_status         varchar(64)  not null,
    password_valid_days  int          not null,
    type                 varchar(255) null,
    role                 int          not null,
    position             int          null,
    time_zone            varchar(32)  not null,
    language             varchar(32)  not null,
    country_code         varchar(32)  null,
    iso_code             varchar(32)  null,
    extras               longtext     not null,
    enabled              tinyint(1)   not null,
    code                 varchar(64)  null,
    password_update_time datetime(6)  null,
    constraint code
        unique (code),
    constraint profiles_profile_username_category_id_cd037bac_uniq
        unique (username, category_id)
);

create index profiles_profile_category_id_d2c62791
    on profiles_profile (category_id);

create index profiles_profile_domain_a481fb0d
    on profiles_profile (domain);

create index profiles_profile_username_5e4bd024
    on profiles_profile (username);

INSERT INTO bk_user.profiles_profile (id, create_time, update_time, username, qq, email, telephone, wx_userid, wx_openid, domain, category_id, display_name, logo, password, status, staff_status, password_valid_days, type, role, position, time_zone, language, country_code, iso_code, extras, enabled, code, password_update_time) VALUES (1, '2022-04-04 10:24:11.862453', '2022-04-04 10:24:11.862493', 'admin', '', '', '', '', '', 'default.local', 1, '', null, 'pbkdf2_sha256$36000$k0qC08XTrplM$2t9RHIAbUuRXOrARusHYxH0YMEO79Zbn2iZPRLt27ls=', 'NORMAL', 'IN', -1, '', 1, 0, 'Asia/Shanghai', 'zh-cn', '86', 'CN', '{}', 1, null, null);
