create table role_roleperm
(
    id      int auto_increment
        primary key,
    role_id int not null,
    perm_id int not null
);

create index role_roleperm_role_id_e923a007_idx
    on role_roleperm (role_id);

