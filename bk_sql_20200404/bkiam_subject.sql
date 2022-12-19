create table subject
(
    pk         int unsigned auto_increment
        primary key,
    type       varchar(32)                           not null,
    id         varchar(64)                           not null,
    name       varchar(64) default ''                not null,
    created_at timestamp   default CURRENT_TIMESTAMP not null,
    updated_at timestamp   default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    constraint idx_uk_id_type
        unique (id, type)
);

INSERT INTO bkiam.subject (pk, type, id, name, created_at, updated_at) VALUES (1, 'user', 'admin', 'admin', '2022-04-04 06:27:34', '2022-04-04 06:27:34');
