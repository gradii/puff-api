create table application_application
(
    id           int auto_increment
        primary key,
    creator      varchar(64)  not null,
    updater      varchar(64)  not null,
    created_time datetime(6)  not null,
    updated_time datetime(6)  not null,
    sn           varchar(64)  not null,
    type         varchar(64)  not null,
    applicant    varchar(64)  not null,
    reason       varchar(255) not null,
    data         longtext     not null,
    status       varchar(32)  not null,
    callback_id  varchar(32)  not null
);

create index application_application_created_time_c998e122_idx
    on application_application (created_time);

