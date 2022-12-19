create table workflow_defaultfield
(
    id              int auto_increment
        primary key,
    creator         varchar(64)    null,
    create_at       datetime(6)    not null,
    update_at       datetime(6)    not null,
    updated_by      varchar(64)    null,
    end_at          datetime(6)    null,
    is_deleted      tinyint(1)     not null,
    is_builtin      tinyint(1)     not null,
    is_readonly     tinyint(1)     not null,
    is_valid        tinyint(1)     not null,
    display         tinyint(1)     not null,
    source_type     varchar(32)    not null,
    source_uri      varchar(255)   null,
    type            varchar(32)    not null,
    `key`           varchar(255)   not null,
    name            varchar(64)    not null,
    layout          varchar(32)    not null,
    validate_type   varchar(32)    not null,
    regex           varchar(64)    null,
    `desc`          varchar(128)   null,
    `default`       varchar(10000) null,
    choice          longtext       not null,
    related_fields  longtext       null,
    category        varchar(128)   not null,
    custom_regex    varchar(128)   null,
    meta            longtext       not null,
    flow_type       varchar(64)    not null,
    api_instance_id int            null,
    is_tips         tinyint(1)     not null,
    kv_relation     varchar(64)    not null,
    show_conditions longtext       not null,
    show_type       int            not null,
    tips            varchar(128)   null,
    regex_config    varchar(255)   not null
);

create index workflow_defaultfield_is_deleted_2ae8e934
    on workflow_defaultfield (is_deleted);

