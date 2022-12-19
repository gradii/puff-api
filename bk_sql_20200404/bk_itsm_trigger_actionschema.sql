create table trigger_actionschema
(
    id             int auto_increment
        primary key,
    creator        varchar(64)  not null,
    create_at      datetime(6)  not null,
    update_at      datetime(6)  not null,
    updated_by     varchar(64)  not null,
    is_deleted     tinyint(1)   not null,
    name           varchar(255) not null,
    display_name   varchar(255) null,
    component_type varchar(255) not null,
    operate_type   varchar(64)  not null,
    can_repeat     tinyint(1)   not null,
    params         longtext     not null,
    inputs         longtext     not null,
    delay_params   longtext     not null
);

