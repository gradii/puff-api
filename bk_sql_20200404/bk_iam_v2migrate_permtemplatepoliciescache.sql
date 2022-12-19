create table v2migrate_permtemplatepoliciescache
(
    id          int auto_increment
        primary key,
    template_id int      not null,
    data        longtext not null
);

create index v2migrate_permtemplatepoliciescache_template_id_0b0b3b8f_idx
    on v2migrate_permtemplatepoliciescache (template_id);

