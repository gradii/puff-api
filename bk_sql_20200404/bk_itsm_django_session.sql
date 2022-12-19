create table django_session
(
    session_key  varchar(40) not null
        primary key,
    session_data longtext    not null,
    expire_date  datetime(6) not null
);

create index django_session_expire_date_a5c62663
    on django_session (expire_date);

INSERT INTO bk_itsm.django_session (session_key, session_data, expire_date) VALUES ('17rmue97waoqr8wamjq2ub9iafltjfpb', 'ODEwOTgzMDkxM2YxNjU2ZWQ3NTRjYjRlNzFkNDg5YTFjNGIxN2ZhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYmx1ZWFwcHMuYWNjb3VudC5iYWNrZW5kcy5Vc2VyQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjVlZmU1MDNkOTQ1MzMwMWM5NWY4YmMzMWRmMjQwZmEzYTM0ZDlkYmYifQ==', '2022-04-05 18:30:03.617864');
