create table django_site
(
    id     int auto_increment
        primary key,
    domain varchar(100) not null,
    name   varchar(50)  not null,
    constraint django_site_domain_a2e37b91_uniq
        unique (domain)
);

INSERT INTO bk_sops.django_site (id, domain, name) VALUES (1, 'example.com', 'example.com');
