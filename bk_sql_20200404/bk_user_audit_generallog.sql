create table audit_generallog
(
    id          int auto_increment
        primary key,
    create_time datetime(6) not null,
    update_time datetime(6) not null,
    operator    varchar(32) null,
    extra_value longtext    null
);

INSERT INTO bk_user.audit_generallog (id, create_time, update_time, operator, extra_value) VALUES (1, '2022-04-04 11:55:13.848527', '2022-04-04 11:55:13.848545', 'admin', '{"operation":"update","obj_type":"DynamicFieldInfo","client_ip":"10.32.1.1","key":"username","display_name":"\\u7528\\u6237\\u540d"}');
INSERT INTO bk_user.audit_generallog (id, create_time, update_time, operator, extra_value) VALUES (2, '2022-04-04 11:55:14.864150', '2022-04-04 11:55:14.864168', 'admin', '{"operation":"update","obj_type":"DynamicFieldInfo","client_ip":"10.32.1.1","key":"username","display_name":"\\u7528\\u6237\\u540d"}');
INSERT INTO bk_user.audit_generallog (id, create_time, update_time, operator, extra_value) VALUES (3, '2022-04-04 11:55:17.792544', '2022-04-04 11:55:17.792562', 'admin', '{"operation":"update","obj_type":"DynamicFieldInfo","client_ip":"10.32.1.1","key":"email","display_name":"\\u90ae\\u7bb1"}');
INSERT INTO bk_user.audit_generallog (id, create_time, update_time, operator, extra_value) VALUES (4, '2022-04-04 11:55:21.172294', '2022-04-04 11:55:21.172317', 'admin', '{"operation":"update","obj_type":"DynamicFieldInfo","client_ip":"10.32.1.1","key":"email","display_name":"\\u90ae\\u7bb1"}');
