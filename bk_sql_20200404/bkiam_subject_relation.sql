create table subject_relation
(
    pk                int unsigned auto_increment
        primary key,
    subject_pk        int unsigned                        not null,
    subject_type      varchar(16)                         not null,
    subject_id        varchar(64)                         not null,
    parent_pk         int unsigned                        not null,
    parent_type       varchar(16)                         not null,
    parent_id         varchar(64)                         not null,
    policy_expired_at int unsigned                        not null,
    created_at        timestamp default CURRENT_TIMESTAMP not null,
    updated_at        timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    constraint idx_uk_subject_parent
        unique (subject_pk, parent_pk)
);

create index idx_parent
    on subject_relation (parent_id, parent_type);

create index idx_subject
    on subject_relation (subject_id, subject_type);

create index idx_subject_pk_expire
    on subject_relation (subject_pk, policy_expired_at);

