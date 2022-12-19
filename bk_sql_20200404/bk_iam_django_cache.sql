create table django_cache
(
    cache_key varchar(255) not null
        primary key,
    value     longtext     not null,
    expires   datetime(6)  not null
);

create index django_cache_expires
    on django_cache (expires);

