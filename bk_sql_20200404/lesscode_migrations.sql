create table migrations
(
    id     int auto_increment
        primary key,
    name   varchar(255) not null,
    run_on datetime     not null
);

INSERT INTO lesscode.migrations (id, name, run_on) VALUES (1, '/20210329081322-init-sql', '2022-04-04 06:34:42');
INSERT INTO lesscode.migrations (id, name, run_on) VALUES (2, '/20210329113820-update-sql', '2022-04-04 06:34:42');
INSERT INTO lesscode.migrations (id, name, run_on) VALUES (3, '/20210426083005-update-sql', '2022-04-04 06:34:42');
INSERT INTO lesscode.migrations (id, name, run_on) VALUES (4, '/20210510035758-update-sql', '2022-04-04 06:34:42');
INSERT INTO lesscode.migrations (id, name, run_on) VALUES (5, '/20210524075300-update-sql', '2022-04-04 06:34:42');
INSERT INTO lesscode.migrations (id, name, run_on) VALUES (6, '/20210613024623-update-sql', '2022-04-04 06:34:42');
