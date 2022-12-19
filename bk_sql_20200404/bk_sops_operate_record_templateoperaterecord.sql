create table operate_record_templateoperaterecord
(
    id             int auto_increment
        primary key,
    operator       varchar(128) not null,
    operate_type   varchar(64)  not null,
    operate_source varchar(64)  not null,
    instance_id    int          not null,
    project_id     int          not null,
    operate_date   datetime(6)  not null
);

create index operate_rec_instanc_39f580_idx
    on operate_record_templateoperaterecord (instance_id);

INSERT INTO bk_sops.operate_record_templateoperaterecord (id, operator, operate_type, operate_source, instance_id, project_id, operate_date) VALUES (1, 'admin', 'create', 'common', 10001, -1, '2022-04-04 11:47:10.003010');
INSERT INTO bk_sops.operate_record_templateoperaterecord (id, operator, operate_type, operate_source, instance_id, project_id, operate_date) VALUES (2, 'admin', 'update', 'common', 10001, -1, '2022-04-04 11:47:41.572649');
INSERT INTO bk_sops.operate_record_templateoperaterecord (id, operator, operate_type, operate_source, instance_id, project_id, operate_date) VALUES (3, 'admin', 'update', 'common', 10001, -1, '2022-04-04 11:47:51.876865');
