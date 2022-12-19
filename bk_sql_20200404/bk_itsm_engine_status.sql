create table engine_status
(
    id               varchar(32) not null
        primary key,
    state            varchar(10) not null,
    name             varchar(64) not null,
    retry            int         not null,
    `loop`           int         not null,
    skip             tinyint(1)  not null,
    created_time     datetime(6) not null,
    started_time     datetime(6) null,
    archived_time    datetime(6) null,
    version          varchar(32) not null,
    error_ignorable  tinyint(1)  not null,
    state_refresh_at datetime(6) null
);

create index engine_status_created_time_777eadc5
    on engine_status (created_time);

INSERT INTO bk_itsm.engine_status (id, state, name, retry, `loop`, skip, created_time, started_time, archived_time, version, error_ignorable, state_refresh_at) VALUES ('1', 'FINISHED', '<class ''pipeline.core.pipeline.Pipeline''>', 0, 1, 0, '2022-04-04 19:51:16.664640', '2022-04-04 19:51:16.713699', '2022-04-04 19:52:21.958830', '', 0, '2022-04-04 19:52:21.958834');
INSERT INTO bk_itsm.engine_status (id, state, name, retry, `loop`, skip, created_time, started_time, archived_time, version, error_ignorable, state_refresh_at) VALUES ('3ad960e423a03fc0b70534c219235828', 'FINISHED', '提单', 0, 1, 0, '2022-04-04 19:51:16.736177', '2022-04-04 19:51:16.735370', '2022-04-04 19:51:16.755754', '65da18aaf27439b491e6460e8e4467ac', 0, '2022-04-04 19:51:16.755759');
INSERT INTO bk_itsm.engine_status (id, state, name, retry, `loop`, skip, created_time, started_time, archived_time, version, error_ignorable, state_refresh_at) VALUES ('6679b3d3af903230a8c7e79572354931', 'FINISHED', '<class ''pipeline.core.flow.gateway.ExclusiveGateway''>', 0, 1, 0, '2022-04-04 19:51:55.036246', '2022-04-04 19:51:55.035283', '2022-04-04 19:51:55.045018', '946ef873371b31aa90712b9dca29de02', 0, '2022-04-04 19:51:55.045031');
INSERT INTO bk_itsm.engine_status (id, state, name, retry, `loop`, skip, created_time, started_time, archived_time, version, error_ignorable, state_refresh_at) VALUES ('7addf8c1bca839eeb852a7918d51e9b4', 'FINISHED', '管理员审批', 0, 1, 0, '2022-04-04 19:51:55.050361', '2022-04-04 19:51:55.049616', '2022-04-04 19:52:21.913933', '088a6591fa063fb7957b98bcd1335949', 0, '2022-04-04 19:52:21.913945');
INSERT INTO bk_itsm.engine_status (id, state, name, retry, `loop`, skip, created_time, started_time, archived_time, version, error_ignorable, state_refresh_at) VALUES ('8c3013f4fae63c79be11c232d8e6afa7', 'FINISHED', '负责人审批', 0, 1, 0, '2022-04-04 19:51:16.761842', '2022-04-04 19:51:16.760984', '2022-04-04 19:51:55.002615', 'a2399ed1db143771aeaf673e7f15fd6e', 0, '2022-04-04 19:51:55.002626');
INSERT INTO bk_itsm.engine_status (id, state, name, retry, `loop`, skip, created_time, started_time, archived_time, version, error_ignorable, state_refresh_at) VALUES ('95c0ff2beeb83a909a555461674a05a0', 'FINISHED', '结束', 0, 1, 0, '2022-04-04 19:52:21.948581', '2022-04-04 19:52:21.947847', '2022-04-04 19:52:21.954710', '8316ebeaa02e3088abaeddfda65055cb', 0, '2022-04-04 19:52:21.954715');
INSERT INTO bk_itsm.engine_status (id, state, name, retry, `loop`, skip, created_time, started_time, archived_time, version, error_ignorable, state_refresh_at) VALUES ('cf215c27972038bea132f11f2af4a154', 'FINISHED', '开始', 0, 1, 0, '2022-04-04 19:51:16.725052', '2022-04-04 19:51:16.724295', '2022-04-04 19:51:16.730343', '3e5aca6d8cf339b0b759037da22e121e', 0, '2022-04-04 19:51:16.730353');
