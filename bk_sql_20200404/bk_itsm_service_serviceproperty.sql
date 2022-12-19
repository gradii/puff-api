create table service_serviceproperty
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
    `key`               varchar(32)  not null,
    is_cascade          tinyint(1)   not null,
    name                varchar(255) not null,
    `desc`              varchar(255) not null,
    fields              longtext     null,
    service_category_id int          not null,
    pk_key              varchar(32)  not null,
    cascade_key         varchar(32)  not null,
    constraint service_serviceprope_service_category_id_07cfeff0_fk_service_s
        foreign key (service_category_id) references service_servicecategory (id)
);

