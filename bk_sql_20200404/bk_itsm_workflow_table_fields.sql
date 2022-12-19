create table workflow_table_fields
(
    id               int auto_increment
        primary key,
    table_id         int not null,
    templatefield_id int not null,
    constraint workflow_table_fields_table_id_templatefield_id_143d2852_uniq
        unique (table_id, templatefield_id),
    constraint workflow_table_field_templatefield_id_e6d1b4cf_fk_workflow_
        foreign key (templatefield_id) references workflow_templatefield (id),
    constraint workflow_table_fields_table_id_016406a1_fk_workflow_table_id
        foreign key (table_id) references workflow_table (id)
);

INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (1, 1, 1);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (2, 1, 2);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (3, 1, 3);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (4, 1, 4);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (5, 1, 5);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (6, 2, 1);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (7, 2, 2);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (8, 2, 3);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (9, 2, 4);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (10, 2, 5);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (11, 3, 1);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (12, 3, 2);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (13, 3, 3);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (14, 3, 4);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (15, 3, 5);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (16, 4, 1);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (17, 4, 2);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (18, 4, 3);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (19, 4, 4);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (20, 4, 5);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (21, 5, 1);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (22, 5, 2);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (23, 5, 3);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (24, 5, 4);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (25, 5, 5);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (26, 6, 1);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (27, 6, 5);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (28, 6, 6);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (29, 6, 7);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (30, 7, 1);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (31, 7, 5);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (32, 8, 1);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (33, 8, 5);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (34, 8, 8);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (35, 8, 9);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (36, 8, 10);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (37, 8, 11);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (38, 9, 1);
INSERT INTO bk_itsm.workflow_table_fields (id, table_id, templatefield_id) VALUES (39, 9, 5);
