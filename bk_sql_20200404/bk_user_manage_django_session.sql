create table django_session
(
    session_key  varchar(40) not null
        primary key,
    session_data longtext    not null,
    expire_date  datetime(6) not null
);

create index django_session_expire_date_a5c62663
    on django_session (expire_date);

INSERT INTO bk_user_manage.django_session (session_key, session_data, expire_date) VALUES ('9qocy7wffnbxsbargg4szd6reip487nk', 'MDA3YmJkNjEyY2RlYmZkYzdjZWM4NmZlZjBhNjgyMDllMDZjNzc1MTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic2hlbGwuYWNjb3VudC5iYWNrZW5kcy5Vc2VyQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImZkMzU5MDJmOWFlYTFhODUyMjc4OWY3ZmRkMjMyNThmZTgxODQzYmMifQ==', '2022-04-18 19:56:13.767213');
INSERT INTO bk_user_manage.django_session (session_key, session_data, expire_date) VALUES ('d2s7yjr7sg146j0ido2ma4fzoxbikkdk', 'MDA3YmJkNjEyY2RlYmZkYzdjZWM4NmZlZjBhNjgyMDllMDZjNzc1MTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic2hlbGwuYWNjb3VudC5iYWNrZW5kcy5Vc2VyQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImZkMzU5MDJmOWFlYTFhODUyMjc4OWY3ZmRkMjMyNThmZTgxODQzYmMifQ==', '2022-04-18 18:29:14.941305');
INSERT INTO bk_user_manage.django_session (session_key, session_data, expire_date) VALUES ('rvqqmt5bmu0s4iwdr6expxbr050dtmiq', 'MDA3YmJkNjEyY2RlYmZkYzdjZWM4NmZlZjBhNjgyMDllMDZjNzc1MTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic2hlbGwuYWNjb3VudC5iYWNrZW5kcy5Vc2VyQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImZkMzU5MDJmOWFlYTFhODUyMjc4OWY3ZmRkMjMyNThmZTgxODQzYmMifQ==', '2022-04-18 19:54:41.830168');
