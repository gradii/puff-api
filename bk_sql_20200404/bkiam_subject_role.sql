create table subject_role
(
    pk         int unsigned auto_increment
        primary key,
    role_type  varchar(32)                           not null,
    system_id  varchar(32) default ''                not null,
    subject_pk int unsigned                          not null,
    created_at timestamp   default CURRENT_TIMESTAMP not null,
    updated_at timestamp   default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    constraint idx_uk_type_system_subject
        unique (role_type, system_id, subject_pk)
);

INSERT INTO bkiam.subject_role (pk, role_type, system_id, subject_pk, created_at, updated_at) VALUES (1, 'super_manager', 'SUPER', 1, '2022-04-04 06:27:35', '2022-04-04 06:27:35');
