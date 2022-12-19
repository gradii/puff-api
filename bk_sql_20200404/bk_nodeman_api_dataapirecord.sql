create table api_dataapirecord
(
    id               int auto_increment
        primary key,
    request_datetime datetime(6)   not null,
    url              varchar(128)  not null,
    module           varchar(64)   not null,
    method           varchar(16)   not null,
    method_override  varchar(16)   null,
    query_params     longtext      not null,
    response_result  tinyint(1)    not null,
    response_code    varchar(16)   not null,
    response_data    longtext      not null,
    response_message varchar(1024) null,
    cost_time        double        not null,
    request_id       varchar(64)   not null,
    response_errors  longtext      null
);

create index api_dataapirecord_module_9d26b782
    on api_dataapirecord (module);

create index api_dataapirecord_request_id_d4d87e2c
    on api_dataapirecord (request_id);

create index api_dataapirecord_response_code_15ace32f
    on api_dataapirecord (response_code);

create index api_dataapirecord_url_753b5097
    on api_dataapirecord (url);

