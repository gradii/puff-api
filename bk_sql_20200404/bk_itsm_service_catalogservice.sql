create table service_catalogservice
(
    id         int auto_increment
        primary key,
    creator    varchar(64) not null,
    create_at  datetime(6) not null,
    update_at  datetime(6) not null,
    updated_by varchar(64) not null,
    end_at     datetime(6) null,
    is_deleted tinyint(1)  not null,
    is_builtin tinyint(1)  not null,
    catalog_id int         not null,
    service_id int         not null,
    `order`    int         not null,
    constraint service_catalogservi_catalog_id_f3ed7423_fk_service_s
        foreign key (catalog_id) references service_servicecatalog (id),
    constraint service_catalogservice_service_id_fbeed007_fk_service_service_id
        foreign key (service_id) references service_service (id)
);

INSERT INTO bk_itsm.service_catalogservice (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, catalog_id, service_id, `order`) VALUES (1, '', '2022-04-04 18:29:35.019375', '2022-04-04 18:29:35.019391', '', null, 0, 0, 11, 2, 1);
INSERT INTO bk_itsm.service_catalogservice (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, catalog_id, service_id, `order`) VALUES (2, '', '2022-04-04 18:29:35.127541', '2022-04-04 18:29:35.127561', '', null, 0, 0, 11, 3, 1);
INSERT INTO bk_itsm.service_catalogservice (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, catalog_id, service_id, `order`) VALUES (3, '', '2022-04-04 18:29:35.169033', '2022-04-04 18:29:35.169050', '', null, 0, 0, 11, 4, 1);
INSERT INTO bk_itsm.service_catalogservice (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, catalog_id, service_id, `order`) VALUES (4, '', '2022-04-04 18:29:35.333564', '2022-04-04 18:29:35.333587', '', null, 0, 0, 11, 5, 1);
INSERT INTO bk_itsm.service_catalogservice (id, creator, create_at, update_at, updated_by, end_at, is_deleted, is_builtin, catalog_id, service_id, `order`) VALUES (5, '', '2022-04-04 19:50:32.766963', '2022-04-04 19:50:32.766982', '', null, 0, 0, 2, 1, 1);
