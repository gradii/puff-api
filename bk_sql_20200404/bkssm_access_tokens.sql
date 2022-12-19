create table access_tokens
(
    id                          int unsigned auto_increment
        primary key,
    client_id                   varchar(32)                               not null,
    user_id                     varchar(255) default ''                   not null,
    user_type                   varchar(32)  default 'bkuser'             not null,
    access_token                varchar(255)                              not null,
    expires                     int unsigned                              not null,
    last_accessed               timestamp                                 null,
    refresh_token               varchar(255)                              not null,
    refresh_token_expires       int unsigned                              not null,
    refresh_token_last_accessed timestamp                                 null,
    grant_type                  varchar(40)  default 'client_credentials' null,
    created_at                  timestamp    default CURRENT_TIMESTAMP    not null,
    updated_at                  timestamp    default CURRENT_TIMESTAMP    not null on update CURRENT_TIMESTAMP,
    constraint access_token
        unique (access_token),
    constraint refresh_token
        unique (refresh_token)
);

create index idx_client_id_user_type_user_id
    on access_tokens (client_id, user_id, user_type);

