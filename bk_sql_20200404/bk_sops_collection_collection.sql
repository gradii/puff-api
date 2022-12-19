create table collection_collection
(
    id          int auto_increment
        primary key,
    username    varchar(255) not null,
    category    varchar(255) not null,
    extra_info  longtext     not null,
    instance_id int          not null
);

create index collection_collection_category_instance_id_5b0053a2_idx
    on collection_collection (category, instance_id);

INSERT INTO bk_sops.collection_collection (id, username, category, extra_info, instance_id) VALUES (1, 'admin', 'common_flow', '{"template_id": 10001, "name": "new20220404114629", "id": 10001}', 10001);
