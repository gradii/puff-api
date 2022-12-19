create table files_uploadmodulefiletag
(
    id        int auto_increment
        primary key,
    source_ip varchar(128) not null,
    file_name longtext     not null,
    file_path longtext     not null
);

