create table departments_department_profiles
(
    id            int auto_increment
        primary key,
    department_id int not null,
    profile_id    int not null,
    constraint departments_department_p_department_id_profile_id_5725269b_uniq
        unique (department_id, profile_id),
    constraint departments_departme_department_id_d7519742_fk_departmen
        foreign key (department_id) references departments_department (id),
    constraint departments_departme_profile_id_4e1d8a38_fk_profiles_
        foreign key (profile_id) references profiles_profile (id)
);

INSERT INTO bk_user.departments_department_profiles (id, department_id, profile_id) VALUES (1, 1, 1);
