create table model_change_event
(
    pk         int unsigned auto_increment
        primary key,
    type       varchar(32)                         not null,
    status     varchar(32)                         not null,
    system_id  varchar(32)                         not null,
    model_type varchar(32)                         not null,
    model_id   varchar(32)                         not null,
    model_pk   int unsigned                        not null,
    created_at timestamp default CURRENT_TIMESTAMP not null,
    updated_at timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP
);

create index idx_type_model
    on model_change_event (status, type, model_type, model_pk);

