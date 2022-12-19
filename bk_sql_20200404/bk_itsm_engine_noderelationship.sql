create table engine_noderelationship
(
    id            bigint auto_increment
        primary key,
    ancestor_id   varchar(32) not null,
    descendant_id varchar(32) not null,
    distance      int         not null
);

create index engine_noderelationship_ancestor_id_47d3352e
    on engine_noderelationship (ancestor_id);

create index engine_noderelationship_descendant_id_259c88cb
    on engine_noderelationship (descendant_id);

create index engine_noderelationship_distance_6ddef031
    on engine_noderelationship (distance);

INSERT INTO bk_itsm.engine_noderelationship (id, ancestor_id, descendant_id, distance) VALUES (1, '1', '1', 0);
INSERT INTO bk_itsm.engine_noderelationship (id, ancestor_id, descendant_id, distance) VALUES (2, 'cf215c27972038bea132f11f2af4a154', 'cf215c27972038bea132f11f2af4a154', 0);
INSERT INTO bk_itsm.engine_noderelationship (id, ancestor_id, descendant_id, distance) VALUES (3, '1', 'cf215c27972038bea132f11f2af4a154', 1);
INSERT INTO bk_itsm.engine_noderelationship (id, ancestor_id, descendant_id, distance) VALUES (4, '3ad960e423a03fc0b70534c219235828', '3ad960e423a03fc0b70534c219235828', 0);
INSERT INTO bk_itsm.engine_noderelationship (id, ancestor_id, descendant_id, distance) VALUES (5, '1', '3ad960e423a03fc0b70534c219235828', 1);
INSERT INTO bk_itsm.engine_noderelationship (id, ancestor_id, descendant_id, distance) VALUES (6, '8c3013f4fae63c79be11c232d8e6afa7', '8c3013f4fae63c79be11c232d8e6afa7', 0);
INSERT INTO bk_itsm.engine_noderelationship (id, ancestor_id, descendant_id, distance) VALUES (7, '1', '8c3013f4fae63c79be11c232d8e6afa7', 1);
INSERT INTO bk_itsm.engine_noderelationship (id, ancestor_id, descendant_id, distance) VALUES (8, '6679b3d3af903230a8c7e79572354931', '6679b3d3af903230a8c7e79572354931', 0);
INSERT INTO bk_itsm.engine_noderelationship (id, ancestor_id, descendant_id, distance) VALUES (9, '1', '6679b3d3af903230a8c7e79572354931', 1);
INSERT INTO bk_itsm.engine_noderelationship (id, ancestor_id, descendant_id, distance) VALUES (10, '7addf8c1bca839eeb852a7918d51e9b4', '7addf8c1bca839eeb852a7918d51e9b4', 0);
INSERT INTO bk_itsm.engine_noderelationship (id, ancestor_id, descendant_id, distance) VALUES (11, '1', '7addf8c1bca839eeb852a7918d51e9b4', 1);
INSERT INTO bk_itsm.engine_noderelationship (id, ancestor_id, descendant_id, distance) VALUES (12, '95c0ff2beeb83a909a555461674a05a0', '95c0ff2beeb83a909a555461674a05a0', 0);
INSERT INTO bk_itsm.engine_noderelationship (id, ancestor_id, descendant_id, distance) VALUES (13, '1', '95c0ff2beeb83a909a555461674a05a0', 1);
