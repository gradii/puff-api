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

