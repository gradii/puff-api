create table template_commontemplate_collector
(
    id                int auto_increment
        primary key,
    commontemplate_id int not null,
    user_id           int not null,
    constraint template_commontemplate__commontemplate_id_user_i_9c02c176_uniq
        unique (commontemplate_id, user_id),
    constraint template_commontempl_commontemplate_id_77b5456b_fk_template_
        foreign key (commontemplate_id) references template_commontemplate (id),
    constraint template_commontempl_user_id_2612d36d_fk_account_u
        foreign key (user_id) references account_user (id)
);

