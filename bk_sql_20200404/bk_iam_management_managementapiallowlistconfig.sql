create table management_managementapiallowlistconfig
(
    id           int auto_increment
        primary key,
    creator      varchar(64) not null,
    updater      varchar(64) not null,
    created_time datetime(6) not null,
    updated_time datetime(6) not null,
    api          varchar(32) not null,
    system_id    varchar(32) not null
);

create index management_managementapia_system_id_api_57d49684_idx
    on management_managementapiallowlistconfig (system_id, api);

INSERT INTO bk_iam.management_managementapiallowlistconfig (id, creator, updater, created_time, updated_time, api, system_id) VALUES (1, '', '', '2022-04-04 10:27:34.132128', '2022-04-04 10:27:34.132159', '*', 'bk_ci');
