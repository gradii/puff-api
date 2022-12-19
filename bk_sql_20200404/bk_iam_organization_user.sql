create table organization_user
(
    created_time datetime(6)  not null,
    updated_time datetime(6)  not null,
    id           int          not null
        primary key,
    username     varchar(255) not null,
    display_name varchar(255) null,
    staff_status varchar(16)  not null,
    category_id  int          null,
    constraint username
        unique (username)
);

INSERT INTO bk_iam.organization_user (created_time, updated_time, id, username, display_name, staff_status, category_id) VALUES ('2022-04-04 10:27:34.679288', '2022-04-04 10:27:34.679322', 1, 'admin', 'admin', 'IN', 1);
