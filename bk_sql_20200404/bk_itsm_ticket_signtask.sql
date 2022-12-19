create table ticket_signtask
(
    id         int auto_increment
        primary key,
    creator    varchar(64)  null,
    create_at  datetime(6)  not null,
    update_at  datetime(6)  not null,
    updated_by varchar(64)  null,
    end_at     datetime(6)  null,
    is_deleted tinyint(1)   not null,
    status_id  int          not null,
    `order`    int          not null,
    status     varchar(32)  not null,
    processor  varchar(255) not null,
    is_passed  tinyint(1)   null
);

create index ticket_signtask_is_deleted_616aa7e2
    on ticket_signtask (is_deleted);

INSERT INTO bk_itsm.ticket_signtask (id, creator, create_at, update_at, updated_by, end_at, is_deleted, status_id, `order`, status, processor, is_passed) VALUES (1, null, '2022-04-04 19:51:53.901561', '2022-04-04 19:51:54.954719', null, null, 0, 2, -1, 'FINISHED', 'admin', 1);
INSERT INTO bk_itsm.ticket_signtask (id, creator, create_at, update_at, updated_by, end_at, is_deleted, status_id, `order`, status, processor, is_passed) VALUES (2, null, '2022-04-04 19:52:21.821630', '2022-04-04 19:52:21.859060', null, null, 0, 3, -1, 'FINISHED', 'admin', 1);
