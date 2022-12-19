create table subject_department
(
    pk             int unsigned auto_increment
        primary key,
    subject_pk     int unsigned                        not null,
    department_pks varchar(1024)                       not null,
    created_at     timestamp default CURRENT_TIMESTAMP not null,
    updated_at     timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    constraint idx_uk_subject
        unique (subject_pk)
);

