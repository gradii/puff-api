create table engine_scheduleservice
(
    id                     varchar(64) not null
        primary key,
    activity_id            varchar(32) not null,
    process_id             varchar(32) not null,
    schedule_times         int         not null,
    wait_callback          tinyint(1)  not null,
    callback_data          longblob    not null,
    service_act            longblob    not null,
    is_finished            tinyint(1)  not null,
    version                varchar(32) not null,
    is_scheduling          tinyint(1)  not null,
    multi_callback_enabled tinyint(1)  not null
);

create index engine_scheduleservice_activity_id_03644764
    on engine_scheduleservice (activity_id);

create index engine_scheduleservice_is_scheduling_d84d5676
    on engine_scheduleservice (is_scheduling);

create index engine_scheduleservice_version_1e9eb3b3
    on engine_scheduleservice (version);

