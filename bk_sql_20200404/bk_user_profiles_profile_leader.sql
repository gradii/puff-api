create table profiles_profile_leader
(
    id              int auto_increment
        primary key,
    from_profile_id int not null,
    to_profile_id   int not null,
    constraint profiles_profile_leader_from_profile_id_to_profi_1d0d5ef9_uniq
        unique (from_profile_id, to_profile_id),
    constraint profiles_profile_lea_from_profile_id_5ed0e968_fk_profiles_
        foreign key (from_profile_id) references profiles_profile (id),
    constraint profiles_profile_lea_to_profile_id_ff33a4dd_fk_profiles_
        foreign key (to_profile_id) references profiles_profile (id)
);

