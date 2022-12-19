create table account_cache
(
    cache_key varchar(255) not null
        primary key,
    value     longtext     not null,
    expires   datetime(6)  not null
);

create index account_cache_expires
    on account_cache (expires);

INSERT INTO bk_sops.account_cache (cache_key, value, expires) VALUES (':1:None', 'gASVPQAAAAAAAAB9lIwIYmtfdG9rZW6UjCtQNUhQTmVsRVBOcXpnTF94dFgxdU5fRTFWaHdrVVNjQVQzLWJVQ25XejcwlHMu', '2022-04-04 10:39:37');
INSERT INTO bk_sops.account_cache (cache_key, value, expires) VALUES (':1:oug7m7nqx7cw2ccn1pqeziwcv41pbcyb', 'gASVPQAAAAAAAAB9lIwIYmtfdG9rZW6UjCtQNUhQTmVsRVBOcXpnTF94dFgxdU5fRTFWaHdrVVNjQVQzLWJVQ25XejcwlHMu', '2022-04-04 11:49:00');
