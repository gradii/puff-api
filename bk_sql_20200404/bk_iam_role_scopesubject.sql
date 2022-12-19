create table role_scopesubject
(
    id            int auto_increment
        primary key,
    role_scope_id int         not null,
    role_id       int         not null,
    subject_type  varchar(32) not null,
    subject_id    varchar(64) not null
);

INSERT INTO bk_iam.role_scopesubject (id, role_scope_id, role_id, subject_type, subject_id) VALUES (1, 4, 2, '*', '*');
INSERT INTO bk_iam.role_scopesubject (id, role_scope_id, role_id, subject_type, subject_id) VALUES (2, 6, 3, '*', '*');
INSERT INTO bk_iam.role_scopesubject (id, role_scope_id, role_id, subject_type, subject_id) VALUES (3, 8, 4, '*', '*');
INSERT INTO bk_iam.role_scopesubject (id, role_scope_id, role_id, subject_type, subject_id) VALUES (4, 10, 5, '*', '*');
INSERT INTO bk_iam.role_scopesubject (id, role_scope_id, role_id, subject_type, subject_id) VALUES (5, 12, 6, '*', '*');
