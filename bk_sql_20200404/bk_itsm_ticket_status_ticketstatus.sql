create table ticket_status_ticketstatus
(
    id           int auto_increment
        primary key,
    creator      varchar(64)  not null,
    create_at    datetime(6)  not null,
    update_at    datetime(6)  not null,
    updated_by   varchar(64)  not null,
    is_deleted   tinyint(1)   not null,
    service_type varchar(64)  not null,
    `key`        varchar(255) not null,
    name         varchar(255) not null,
    `desc`       varchar(255) null,
    flow_status  varchar(32)  not null,
    `order`      int          not null,
    is_builtin   tinyint(1)   not null,
    is_start     tinyint(1)   not null,
    is_over      tinyint(1)   not null,
    is_suspend   tinyint(1)   not null,
    color_hex    varchar(32)  not null
);

INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (1, '', '2022-04-04 18:29:35.565827', '2022-04-04 18:29:35.565856', '', 0, 'change', 'NEW', '新', '', 'RUNNING', 1, 1, 0, 0, 0, '#3A84FF');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (2, '', '2022-04-04 18:29:35.567738', '2022-04-04 18:29:35.567762', '', 0, 'change', 'RUNNING', '处理中', '', 'RUNNING', 2, 1, 1, 0, 0, '#3A84FF');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (3, '', '2022-04-04 18:29:35.569490', '2022-04-04 18:29:35.569510', '', 0, 'change', 'RESOLVED', '已解决', '', 'RUNNING', 3, 0, 0, 0, 0, '#3A84FF');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (4, '', '2022-04-04 18:29:35.571182', '2022-04-04 18:29:35.571196', '', 0, 'change', 'CONFIRMED', '待确认', '', 'RUNNING', 4, 0, 0, 0, 0, '#3A84FF');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (5, '', '2022-04-04 18:29:35.572757', '2022-04-04 18:29:35.572769', '', 0, 'change', 'SUSPENDED', '挂起', '', 'SUSPEND', 5, 1, 0, 0, 1, '#FF5656');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (6, '', '2022-04-04 18:29:35.574313', '2022-04-04 18:29:35.574325', '', 0, 'change', 'FINISHED', '已完成', '', 'FINISHED', 6, 1, 0, 1, 0, '#A4AAB3');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (7, '', '2022-04-04 18:29:35.575881', '2022-04-04 18:29:35.575896', '', 0, 'change', 'TERMINATED', '已终止', '', 'FAILED', 7, 1, 0, 1, 0, '#FF5656');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (8, '', '2022-04-04 18:29:35.577478', '2022-04-04 18:29:35.577491', '', 0, 'change', 'REVOKED', '已撤销', '', 'TERMINATED', 8, 1, 0, 1, 0, '#FF5656');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (9, '', '2022-04-04 18:29:35.579035', '2022-04-04 18:29:35.579053', '', 0, 'event', 'NEW', '新', '', 'RUNNING', 1, 1, 0, 0, 0, '#3A84FF');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (10, '', '2022-04-04 18:29:35.580653', '2022-04-04 18:29:35.580666', '', 0, 'event', 'RUNNING', '处理中', '', 'RUNNING', 2, 1, 1, 0, 0, '#3A84FF');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (11, '', '2022-04-04 18:29:35.582244', '2022-04-04 18:29:35.582256', '', 0, 'event', 'RESOLVED', '已解决', '', 'RUNNING', 3, 0, 0, 0, 0, '#3A84FF');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (12, '', '2022-04-04 18:29:35.583811', '2022-04-04 18:29:35.583823', '', 0, 'event', 'CONFIRMED', '待确认', '', 'RUNNING', 4, 0, 0, 0, 0, '#3A84FF');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (13, '', '2022-04-04 18:29:35.585376', '2022-04-04 18:29:35.585388', '', 0, 'event', 'SUSPENDED', '挂起', '', 'SUSPEND', 5, 1, 0, 0, 1, '#FF5656');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (14, '', '2022-04-04 18:29:35.586930', '2022-04-04 18:29:35.586942', '', 0, 'event', 'FINISHED', '已完成', '', 'FINISHED', 6, 1, 0, 1, 0, '#A4AAB3');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (15, '', '2022-04-04 18:29:35.588511', '2022-04-04 18:29:35.588525', '', 0, 'event', 'TERMINATED', '已终止', '', 'FAILED', 7, 1, 0, 1, 0, '#FF5656');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (16, '', '2022-04-04 18:29:35.590103', '2022-04-04 18:29:35.590124', '', 0, 'event', 'REVOKED', '已撤销', '', 'TERMINATED', 8, 1, 0, 1, 0, '#FF5656');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (17, '', '2022-04-04 18:29:35.591863', '2022-04-04 18:29:35.591880', '', 0, 'public', 'NEW', '新', '', 'RUNNING', 1, 1, 0, 0, 0, '#3A84FF');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (18, '', '2022-04-04 18:29:35.593709', '2022-04-04 18:29:35.593729', '', 0, 'public', 'RUNNING', '处理中', '', 'RUNNING', 2, 1, 1, 0, 0, '#3A84FF');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (19, '', '2022-04-04 18:29:35.595539', '2022-04-04 18:29:35.595552', '', 0, 'public', 'RESOLVED', '已解决', '', 'RUNNING', 3, 0, 0, 0, 0, '#3A84FF');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (20, '', '2022-04-04 18:29:35.597141', '2022-04-04 18:29:35.597153', '', 0, 'public', 'CONFIRMED', '待确认', '', 'RUNNING', 4, 0, 0, 0, 0, '#3A84FF');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (21, '', '2022-04-04 18:29:35.598712', '2022-04-04 18:29:35.598724', '', 0, 'public', 'SUSPENDED', '挂起', '', 'SUSPEND', 5, 1, 0, 0, 1, '#FF5656');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (22, '', '2022-04-04 18:29:35.600336', '2022-04-04 18:29:35.600349', '', 0, 'public', 'FINISHED', '已完成', '', 'FINISHED', 6, 1, 0, 1, 0, '#A4AAB3');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (23, '', '2022-04-04 18:29:35.602035', '2022-04-04 18:29:35.602051', '', 0, 'public', 'TERMINATED', '已终止', '', 'FAILED', 7, 1, 0, 1, 0, '#FF5656');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (24, '', '2022-04-04 18:29:35.603694', '2022-04-04 18:29:35.603707', '', 0, 'public', 'REVOKED', '已撤销', '', 'TERMINATED', 8, 1, 0, 1, 0, '#FF5656');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (25, '', '2022-04-04 18:29:35.605279', '2022-04-04 18:29:35.605291', '', 0, 'question', 'NEW', '新', '', 'RUNNING', 1, 1, 0, 0, 0, '#3A84FF');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (26, '', '2022-04-04 18:29:35.606836', '2022-04-04 18:29:35.606848', '', 0, 'question', 'RUNNING', '处理中', '', 'RUNNING', 2, 1, 1, 0, 0, '#3A84FF');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (27, '', '2022-04-04 18:29:35.608400', '2022-04-04 18:29:35.608412', '', 0, 'question', 'RESOLVED', '已解决', '', 'RUNNING', 3, 0, 0, 0, 0, '#3A84FF');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (28, '', '2022-04-04 18:29:35.609957', '2022-04-04 18:29:35.609968', '', 0, 'question', 'CONFIRMED', '待确认', '', 'RUNNING', 4, 0, 0, 0, 0, '#3A84FF');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (29, '', '2022-04-04 18:29:35.611527', '2022-04-04 18:29:35.611538', '', 0, 'question', 'SUSPENDED', '挂起', '', 'SUSPEND', 5, 1, 0, 0, 1, '#FF5656');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (30, '', '2022-04-04 18:29:35.613077', '2022-04-04 18:29:35.613089', '', 0, 'question', 'FINISHED', '已完成', '', 'FINISHED', 6, 1, 0, 1, 0, '#A4AAB3');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (31, '', '2022-04-04 18:29:35.614675', '2022-04-04 18:29:35.614689', '', 0, 'question', 'TERMINATED', '已终止', '', 'FAILED', 7, 1, 0, 1, 0, '#FF5656');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (32, '', '2022-04-04 18:29:35.616294', '2022-04-04 18:29:35.616306', '', 0, 'question', 'REVOKED', '已撤销', '', 'TERMINATED', 8, 1, 0, 1, 0, '#FF5656');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (33, '', '2022-04-04 18:29:35.617866', '2022-04-04 18:29:35.617879', '', 0, 'request', 'NEW', '新', '', 'RUNNING', 1, 1, 0, 0, 0, '#3A84FF');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (34, '', '2022-04-04 18:29:35.619493', '2022-04-04 18:29:35.619507', '', 0, 'request', 'RUNNING', '处理中', '', 'RUNNING', 2, 1, 1, 0, 0, '#3A84FF');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (35, '', '2022-04-04 18:29:35.621196', '2022-04-04 18:29:35.621210', '', 0, 'request', 'RESOLVED', '已解决', '', 'RUNNING', 3, 0, 0, 0, 0, '#3A84FF');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (36, '', '2022-04-04 18:29:35.622754', '2022-04-04 18:29:35.622766', '', 0, 'request', 'CONFIRMED', '待确认', '', 'RUNNING', 4, 0, 0, 0, 0, '#3A84FF');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (37, '', '2022-04-04 18:29:35.624330', '2022-04-04 18:29:35.624342', '', 0, 'request', 'SUSPENDED', '挂起', '', 'SUSPEND', 5, 1, 0, 0, 1, '#FF5656');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (38, '', '2022-04-04 18:29:35.626204', '2022-04-04 18:29:35.626224', '', 0, 'request', 'FINISHED', '已完成', '', 'FINISHED', 6, 1, 0, 1, 0, '#A4AAB3');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (39, '', '2022-04-04 18:29:35.627924', '2022-04-04 18:29:35.627940', '', 0, 'request', 'TERMINATED', '已终止', '', 'FAILED', 7, 1, 0, 1, 0, '#FF5656');
INSERT INTO bk_itsm.ticket_status_ticketstatus (id, creator, create_at, update_at, updated_by, is_deleted, service_type, `key`, name, `desc`, flow_status, `order`, is_builtin, is_start, is_over, is_suspend, color_hex) VALUES (40, '', '2022-04-04 18:29:35.629571', '2022-04-04 18:29:35.629584', '', 0, 'request', 'REVOKED', '已撤销', '', 'TERMINATED', 8, 1, 0, 1, 0, '#FF5656');