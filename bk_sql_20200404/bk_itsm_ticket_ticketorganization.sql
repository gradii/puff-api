create table ticket_ticketorganization
(
    id                int auto_increment
        primary key,
    creator           varchar(64)  null,
    create_at         datetime(6)  not null,
    update_at         datetime(6)  not null,
    updated_by        varchar(64)  null,
    end_at            datetime(6)  null,
    is_deleted        tinyint(1)   not null,
    username          varchar(255) not null,
    first_level_id    int          not null,
    first_level_name  varchar(255) not null,
    second_level_id   int          not null,
    second_level_name varchar(255) not null,
    third_level_id    int          not null,
    third_level_name  varchar(255) not null,
    family            longtext     not null
);

create index ticket_ticketorganization_create_at_first_level_id_64184444_idx
    on ticket_ticketorganization (create_at, first_level_id);

create index ticket_ticketorganization_create_at_username_ee4b3dc2_idx
    on ticket_ticketorganization (create_at, username);

create index ticket_ticketorganization_is_deleted_9f881646
    on ticket_ticketorganization (is_deleted);

INSERT INTO bk_itsm.ticket_ticketorganization (id, creator, create_at, update_at, updated_by, end_at, is_deleted, username, first_level_id, first_level_name, second_level_id, second_level_name, third_level_id, third_level_name, family) VALUES (1, null, '2022-04-04 19:51:16.256218', '2022-04-04 19:51:16.256775', null, null, 0, 'admin', 1, '总公司', -1, '其他', -1, '其他', '[]');
