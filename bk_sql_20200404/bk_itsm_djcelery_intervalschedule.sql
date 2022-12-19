create table djcelery_intervalschedule
(
    id    int auto_increment
        primary key,
    every int not null,
    period varchar (24) not null
);

