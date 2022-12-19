create table role_roleuser
(
    id           int auto_increment
        primary key,
    creator      varchar(64) not null,
    updater      varchar(64) not null,
    created_time datetime(6) not null,
    updated_time datetime(6) not null,
    role_id      int         not null,
    username     varchar(64) not null
);

create index role_roleuser_role_id_c5fe0a50_idx
    on role_roleuser (role_id);

INSERT INTO bk_iam.role_roleuser (id, creator, updater, created_time, updated_time, role_id, username) VALUES (1, '', '', '2022-04-04 10:27:35.079831', '2022-04-04 10:27:35.079859', 1, 'admin');
