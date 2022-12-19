create table sla_prioritymatrix
(
    id           int auto_increment
        primary key,
    creator      varchar(64)  not null,
    create_at    datetime(6)  not null,
    update_at    datetime(6)  not null,
    updated_by   varchar(64)  not null,
    is_deleted   tinyint(1)   not null,
    service_type varchar(64)  not null,
    urgency      varchar(255) not null,
    impact       varchar(255) not null,
    priority     varchar(255) not null,
    constraint sla_prioritymatrix_service_type_urgency_impact_22124154_uniq
        unique (service_type, urgency, impact)
);

INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (1, '', '2022-04-04 18:29:35.525856', '2022-04-04 18:29:35.525885', '', 0, 'change', '1', '1', '1');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (2, '', '2022-04-04 18:29:35.525911', '2022-04-04 18:29:35.525917', '', 0, 'change', '1', '2', '1');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (3, '', '2022-04-04 18:29:35.525936', '2022-04-04 18:29:35.525941', '', 0, 'change', '1', '3', '1');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (4, '', '2022-04-04 18:29:35.525960', '2022-04-04 18:29:35.525965', '', 0, 'change', '2', '1', '1');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (5, '', '2022-04-04 18:29:35.525984', '2022-04-04 18:29:35.525989', '', 0, 'change', '2', '2', '2');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (6, '', '2022-04-04 18:29:35.526008', '2022-04-04 18:29:35.526014', '', 0, 'change', '2', '3', '2');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (7, '', '2022-04-04 18:29:35.526033', '2022-04-04 18:29:35.526038', '', 0, 'change', '3', '1', '1');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (8, '', '2022-04-04 18:29:35.526057', '2022-04-04 18:29:35.526062', '', 0, 'change', '3', '2', '2');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (9, '', '2022-04-04 18:29:35.526082', '2022-04-04 18:29:35.526087', '', 0, 'change', '3', '3', '3');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (10, '', '2022-04-04 18:29:35.526106', '2022-04-04 18:29:35.526121', '', 0, 'event', '1', '1', '1');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (11, '', '2022-04-04 18:29:35.526141', '2022-04-04 18:29:35.526146', '', 0, 'event', '1', '2', '1');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (12, '', '2022-04-04 18:29:35.526166', '2022-04-04 18:29:35.526171', '', 0, 'event', '1', '3', '1');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (13, '', '2022-04-04 18:29:35.526190', '2022-04-04 18:29:35.526195', '', 0, 'event', '2', '1', '1');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (14, '', '2022-04-04 18:29:35.526214', '2022-04-04 18:29:35.526219', '', 0, 'event', '2', '2', '2');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (15, '', '2022-04-04 18:29:35.526238', '2022-04-04 18:29:35.526243', '', 0, 'event', '2', '3', '2');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (16, '', '2022-04-04 18:29:35.526262', '2022-04-04 18:29:35.526267', '', 0, 'event', '3', '1', '1');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (17, '', '2022-04-04 18:29:35.526287', '2022-04-04 18:29:35.526292', '', 0, 'event', '3', '2', '2');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (18, '', '2022-04-04 18:29:35.526311', '2022-04-04 18:29:35.526316', '', 0, 'event', '3', '3', '3');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (19, '', '2022-04-04 18:29:35.526336', '2022-04-04 18:29:35.526341', '', 0, 'request', '1', '1', '1');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (20, '', '2022-04-04 18:29:35.526360', '2022-04-04 18:29:35.526365', '', 0, 'request', '1', '2', '1');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (21, '', '2022-04-04 18:29:35.526385', '2022-04-04 18:29:35.526390', '', 0, 'request', '1', '3', '1');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (22, '', '2022-04-04 18:29:35.526410', '2022-04-04 18:29:35.526415', '', 0, 'request', '2', '1', '1');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (23, '', '2022-04-04 18:29:35.526434', '2022-04-04 18:29:35.526439', '', 0, 'request', '2', '2', '2');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (24, '', '2022-04-04 18:29:35.526458', '2022-04-04 18:29:35.526463', '', 0, 'request', '2', '3', '2');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (25, '', '2022-04-04 18:29:35.526483', '2022-04-04 18:29:35.526488', '', 0, 'request', '3', '1', '1');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (26, '', '2022-04-04 18:29:35.526508', '2022-04-04 18:29:35.526514', '', 0, 'request', '3', '2', '2');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (27, '', '2022-04-04 18:29:35.526533', '2022-04-04 18:29:35.526539', '', 0, 'request', '3', '3', '3');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (28, '', '2022-04-04 18:29:35.526559', '2022-04-04 18:29:35.526566', '', 0, 'question', '1', '1', '1');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (29, '', '2022-04-04 18:29:35.526586', '2022-04-04 18:29:35.526592', '', 0, 'question', '1', '2', '1');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (30, '', '2022-04-04 18:29:35.526611', '2022-04-04 18:29:35.526616', '', 0, 'question', '1', '3', '1');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (31, '', '2022-04-04 18:29:35.526636', '2022-04-04 18:29:35.526641', '', 0, 'question', '2', '1', '1');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (32, '', '2022-04-04 18:29:35.526660', '2022-04-04 18:29:35.526665', '', 0, 'question', '2', '2', '2');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (33, '', '2022-04-04 18:29:35.526684', '2022-04-04 18:29:35.526689', '', 0, 'question', '2', '3', '2');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (34, '', '2022-04-04 18:29:35.526709', '2022-04-04 18:29:35.526713', '', 0, 'question', '3', '1', '1');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (35, '', '2022-04-04 18:29:35.526733', '2022-04-04 18:29:35.526742', '', 0, 'question', '3', '2', '2');
INSERT INTO bk_itsm.sla_prioritymatrix (id, creator, create_at, update_at, updated_by, is_deleted, service_type, urgency, impact, priority) VALUES (36, '', '2022-04-04 18:29:35.526761', '2022-04-04 18:29:35.526767', '', 0, 'question', '3', '3', '3');
