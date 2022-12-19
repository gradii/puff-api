create table tasktmpl3_tasktemplate_collector
(
    id              int auto_increment
        primary key,
    tasktemplate_id int not null,
    user_id         int not null,
    constraint tasktmpl3_tasktemplate_c_tasktemplate_id_user_id_9879a44f_uniq
        unique (tasktemplate_id, user_id),
    constraint tasktmpl3_tasktempla_tasktemplate_id_72ab01a0_fk_tasktmpl3
        foreign key (tasktemplate_id) references tasktmpl3_tasktemplate (id),
    constraint tasktmpl3_tasktempla_user_id_60e52116_fk_account_u
        foreign key (user_id) references account_user (id)
);

