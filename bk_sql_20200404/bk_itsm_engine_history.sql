create table engine_history
(
    id            bigint auto_increment
        primary key,
    identifier    varchar(32) not null,
    started_time  datetime(6) not null,
    archived_time datetime(6) not null,
    data_id       bigint      null,
    `loop`        int         not null,
    skip          tinyint(1)  not null,
    constraint engine_history_data_id_6ab72823_fk
        foreign key (data_id) references engine_historydata (id)
);

create index engine_history_identifier_ae4002b4
    on engine_history (identifier);

