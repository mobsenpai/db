drop database if exists School;

create database School;
use School;

create table Student (
    id int,
    name varchar(30),
    course varchar(10)
);

insert into Student values
(1, 'Yash', 'BCA'),
(2, 'Pritam', 'BCA'),
(2, 'Aryan', 'BBA'),
(3, 'Prishu', 'BJMC');

select count(*), course from Student
group by course;
