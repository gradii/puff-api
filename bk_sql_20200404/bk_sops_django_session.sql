create table django_session
(
    session_key  varchar(40) not null
        primary key,
    session_data longtext    not null,
    expire_date  datetime(6) not null
);

create index django_session_expire_date_a5c62663
    on django_session (expire_date);

INSERT INTO bk_sops.django_session (session_key, session_data, expire_date) VALUES ('oug7m7nqx7cw2ccn1pqeziwcv41pbcyb', 'OTEwZDg4MzdlNWI4MDgwMjQzYWVhMGE4NjY2NWI0ZjJhNWZjY2I2Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYmx1ZWFwcHMuYWNjb3VudC5iYWNrZW5kcy5Vc2VyQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjNlODZlMWE2YzM4NjkzNGVkYjczYTMxMTYxYTA3ZGEwZDVlY2MzYmMiLCJia190b2tlbiI6IlA1SFBOZWxFUE5xemdMX3h0WDF1Tl9FMVZod2tVU2NBVDMtYlVDbld6NzAifQ==', '2022-04-18 10:39:37.899927');
