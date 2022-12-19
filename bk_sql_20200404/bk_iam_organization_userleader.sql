create table organization_userleader
(
    id        int auto_increment
        primary key,
    user_id   int not null,
    leader_id int not null
);

create index organization_userleader_user_id_6849f4c4
    on organization_userleader (user_id);

