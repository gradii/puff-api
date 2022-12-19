create table django_signal_valve_signal
(
    id          int auto_increment
        primary key,
    module_path longtext    not null,
    name        varchar(64) not null,
    kwargs      longblob    not null
);

