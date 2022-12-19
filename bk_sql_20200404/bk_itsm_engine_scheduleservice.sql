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

INSERT INTO bk_itsm.engine_scheduleservice (id, activity_id, process_id, schedule_times, wait_callback, callback_data, service_act, is_finished, version, is_scheduling, multi_callback_enabled) VALUES ('7addf8c1bca839eeb852a7918d51e9b4088a6591fa063fb7957b98bcd1335949', '7addf8c1bca839eeb852a7918d51e9b4', 'b1c71d95eda23fcc90b08cf5cf7ec8bc', 1, 1, 0x789C6B60F6D3030002D70100, 0x789C6B60F6D3030002D70100, 1, '088a6591fa063fb7957b98bcd1335949', 0, 1);
INSERT INTO bk_itsm.engine_scheduleservice (id, activity_id, process_id, schedule_times, wait_callback, callback_data, service_act, is_finished, version, is_scheduling, multi_callback_enabled) VALUES ('8c3013f4fae63c79be11c232d8e6afa7a2399ed1db143771aeaf673e7f15fd6e', '8c3013f4fae63c79be11c232d8e6afa7', 'b1c71d95eda23fcc90b08cf5cf7ec8bc', 1, 1, 0x789C6B60F6D3030002D70100, 0x789C6B60F6D3030002D70100, 1, 'a2399ed1db143771aeaf673e7f15fd6e', 0, 1);
