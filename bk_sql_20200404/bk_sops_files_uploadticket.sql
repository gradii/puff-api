create table files_uploadticket
(
    id           int auto_increment
        primary key,
    code         varchar(32)  not null,
    applicant    varchar(128) not null,
    apply_from   varchar(128) not null,
    created_at   datetime(6)  not null,
    is_available tinyint(1)   not null,
    used_at      datetime(6)  null
);

