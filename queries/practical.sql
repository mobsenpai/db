drop database if exists practical;

create database practical;
use practical;

create table employee (
    emp_id int primary key auto_increment,
    emp_name varchar(50),
    salary decimal(10,2),
    join_date date default current_date
);

insert into employee values
(1, 'Yash', 30000.0, '2024-02-01'),
(2, 'Aryan', 20000.2, default),
(3, 'Pritam', 25000.0, default),
(4, 'Rudra', 20000.10, '2024-10-11');

select * from employee
