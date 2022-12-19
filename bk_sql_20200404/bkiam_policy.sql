create table policy
(
    pk            int unsigned auto_increment
        primary key,
    subject_pk    int unsigned                           not null,
    action_pk     int unsigned                           not null,
    expression_pk int                                    not null,
    expired_at    int unsigned                           not null,
    template_id   int unsigned default 0                 not null,
    created_at    timestamp    default CURRENT_TIMESTAMP not null,
    updated_at    timestamp    default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP
);

create index idx_action_expire
    on policy (action_pk, expired_at);

create index idx_subject_action_expire
    on policy (subject_pk, action_pk, expired_at);

create index idx_subject_template
    on policy (subject_pk, template_id);

create index idx_uk_subject_expression
    on policy (subject_pk, expression_pk);

create index idx_updated_at
    on policy (updated_at);

INSERT INTO bkiam.policy (pk, subject_pk, action_pk, expression_pk, expired_at, template_id, created_at, updated_at) VALUES (1, 1, 45, 1, 4102444800, 0, '2022-04-04 06:38:37', '2022-04-04 06:38:37');
INSERT INTO bkiam.policy (pk, subject_pk, action_pk, expression_pk, expired_at, template_id, created_at, updated_at) VALUES (2, 1, 46, 2, 4102444800, 0, '2022-04-04 06:38:37', '2022-04-04 06:38:37');
INSERT INTO bkiam.policy (pk, subject_pk, action_pk, expression_pk, expired_at, template_id, created_at, updated_at) VALUES (3, 1, 47, 3, 4102444800, 0, '2022-04-04 06:38:37', '2022-04-04 06:38:37');
INSERT INTO bkiam.policy (pk, subject_pk, action_pk, expression_pk, expired_at, template_id, created_at, updated_at) VALUES (4, 1, 48, 4, 4102444800, 0, '2022-04-04 06:38:37', '2022-04-04 06:38:37');
INSERT INTO bkiam.policy (pk, subject_pk, action_pk, expression_pk, expired_at, template_id, created_at, updated_at) VALUES (5, 1, 49, 5, 4102444800, 0, '2022-04-04 06:38:37', '2022-04-04 06:38:37');
INSERT INTO bkiam.policy (pk, subject_pk, action_pk, expression_pk, expired_at, template_id, created_at, updated_at) VALUES (6, 1, 50, 6, 4102444800, 0, '2022-04-04 06:38:37', '2022-04-04 06:38:37');
