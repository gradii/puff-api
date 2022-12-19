create table service_propertyrecord
(
    id                  int auto_increment
        primary key,
    creator             varchar(64)  not null,
    create_at           datetime(6)  not null,
    update_at           datetime(6)  not null,
    updated_by          varchar(64)  not null,
    end_at              datetime(6)  null,
    is_deleted          tinyint(1)   not null,
    is_builtin          tinyint(1)   not null,
    `key`               varchar(255) not null,
    pk_value            varchar(64)  null,
    flows               longtext     null,
    tickets             longtext     null,
    data                longtext     null,
    service_property_id int          not null,
    display_role        varchar(64)  not null,
    constraint service_propertyreco_service_property_id_f77bf951_fk_service_s
        foreign key (service_property_id) references service_serviceproperty (id)
);

