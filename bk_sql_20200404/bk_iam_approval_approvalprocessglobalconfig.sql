create table approval_approvalprocessglobalconfig
(
    id               int auto_increment
        primary key,
    creator          varchar(64) not null,
    updater          varchar(64) not null,
    created_time     datetime(6) not null,
    updated_time     datetime(6) not null,
    application_type varchar(32) not null,
    process_id       int         not null,
    constraint approval_approvalprocess_application_type_c99f0ede_uniq
        unique (application_type)
);

