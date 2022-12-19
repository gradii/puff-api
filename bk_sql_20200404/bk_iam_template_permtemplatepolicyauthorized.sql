create table template_permtemplatepolicyauthorized
(
    id           int auto_increment
        primary key,
    creator      varchar(64) not null,
    updater      varchar(64) not null,
    created_time datetime(6) not null,
    updated_time datetime(6) not null,
    template_id  int         not null,
    subject_type varchar(32) not null,
    subject_id   varchar(64) not null,
    system_id    varchar(32) not null,
    data         longtext    not null,
    constraint template_permtemplatepol_template_id_subject_type_a458c98e_uniq
        unique (template_id, subject_type, subject_id)
);

create index template_permtemplatepolicyauthorized_system_id_b77ab55a_idx
    on template_permtemplatepolicyauthorized (system_id);

