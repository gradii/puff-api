create table task_taskfield
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
    api_instance_id int            null,
    kv_relation     varchar(64)    not null,
    type            varchar(32)    not null,
    `key`           varchar(255)   not null,
    name            varchar(64)    not null,
    layout          varchar(32)    not null,
    validate_type   varchar(32)    not null,
    show_type       int            not null,
    show_conditions longtext       not null,
    regex           varchar(64)    null,
    regex_config    varchar(255)   not null,
    custom_regex    varchar(128)   null,
    `desc`          varchar(128)   null,
    tips            varchar(128)   null,
    is_tips         tinyint(1)     not null,
    `default`       varchar(10000) null,
    choice          longtext       not null,
    related_fields  longtext       null,
    meta            longtext       not null,
    stage           varchar(64)    not null,
    task_id         int            not null,
    _value          longtext       null,
    sequence        int            not null,
    constraint task_taskfield_task_id_b391c466_fk_task_task_id
        foreign key (task_id) references task_task (id)
);

create index task_taskfield_is_deleted_136117ab
    on task_taskfield (is_deleted);

