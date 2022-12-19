create table expression
(
    pk               int unsigned auto_increment
        primary key,
    action_pk        int unsigned      default 0                 not null,
    expression       mediumtext                                  not null,
    signature        char(32)                                    not null,
    type             smallint unsigned default 0                 not null,
    template_id      int unsigned      default 0                 not null,
    template_version int unsigned      default 0                 not null,
    created_at       timestamp         default CURRENT_TIMESTAMP not null,
    updated_at       timestamp         default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP
);

create index idx_signature_action
    on expression (signature, action_pk);

INSERT INTO bkiam.expression (pk, action_pk, expression, signature, type, template_id, template_version, created_at, updated_at) VALUES (1, 0, '[{"system":"bk_sops","type":"task","expression":{"StringEquals":{"iam_resource_owner":["admin"]}}}]', '4b91b429cc2bef6821591b4805b69bf4', 0, 0, 0, '2022-04-04 06:38:37', '2022-04-04 06:38:37');
INSERT INTO bkiam.expression (pk, action_pk, expression, signature, type, template_id, template_version, created_at, updated_at) VALUES (2, 0, '[{"system":"bk_sops","type":"task","expression":{"StringEquals":{"iam_resource_owner":["admin"]}}}]', '4b91b429cc2bef6821591b4805b69bf4', 0, 0, 0, '2022-04-04 06:38:37', '2022-04-04 06:38:37');
INSERT INTO bkiam.expression (pk, action_pk, expression, signature, type, template_id, template_version, created_at, updated_at) VALUES (3, 0, '[{"system":"bk_sops","type":"task","expression":{"StringEquals":{"iam_resource_owner":["admin"]}}}]', '4b91b429cc2bef6821591b4805b69bf4', 0, 0, 0, '2022-04-04 06:38:37', '2022-04-04 06:38:37');
INSERT INTO bkiam.expression (pk, action_pk, expression, signature, type, template_id, template_version, created_at, updated_at) VALUES (4, 0, '[{"system":"bk_sops","type":"task","expression":{"StringEquals":{"iam_resource_owner":["admin"]}}}]', '4b91b429cc2bef6821591b4805b69bf4', 0, 0, 0, '2022-04-04 06:38:37', '2022-04-04 06:38:37');
INSERT INTO bkiam.expression (pk, action_pk, expression, signature, type, template_id, template_version, created_at, updated_at) VALUES (5, 0, '[{"system":"bk_sops","type":"task","expression":{"StringEquals":{"iam_resource_owner":["admin"]}}}]', '4b91b429cc2bef6821591b4805b69bf4', 0, 0, 0, '2022-04-04 06:38:37', '2022-04-04 06:38:37');
INSERT INTO bkiam.expression (pk, action_pk, expression, signature, type, template_id, template_version, created_at, updated_at) VALUES (6, 0, '[{"system":"bk_sops","type":"task","expression":{"StringEquals":{"iam_resource_owner":["admin"]}}}]', '4b91b429cc2bef6821591b4805b69bf4', 0, 0, 0, '2022-04-04 06:38:37', '2022-04-04 06:38:37');
