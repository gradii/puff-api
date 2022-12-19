create table django_session
(
    session_key  varchar(40) not null
        primary key,
    session_data longtext    not null,
    expire_date  datetime(6) not null
);

create index django_session_expire_date_a5c62663
    on django_session (expire_date);

INSERT INTO bk_iam.django_session (session_key, session_data, expire_date) VALUES ('e0tnga07j7p7h0xyug8o5kki5cpv6d9f', 'N2ViMGM1NTRkMjM3YTFkZDZhOTNhYjY0MzhiZTk3NGYyOTU0ZGM0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYmx1ZWFwcHMuYWNjb3VudC5iYWNrZW5kcy5Vc2VyQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQ0NmQ4NjRiMzliYTcyOTMwYTlmMWY3NTJmYzdkZmRiY2U3YjFhZjcifQ==', '2022-04-05 10:28:13.854787');
