drop database if exists company;

create database company;
use company;

create table dept (
    dept_id int primary key,
    dept_nm varchar(50) unique not null,
    location varchar(50)
);

create table employee (
    emp_id int primary key auto_increment,
    emp_nm varchar(50) not null,
    salary decimal(10,2),
    dept_id int,
    foreign key (dept_id) references dept(dept_id)
);

create table project (
    proj_id int,
    proj_nm varchar(50),
    emp_id int,
    hours int,
    foreign key(emp_id) references employee(emp_id),
    primary key(proj_id, emp_id)
);

insert into dept values
(101, 'IT', 'Pune'),
(102, 'Finance', 'Bihar');

insert into employee (emp_nm, salary, dept_id) values
('Yash', 30000.0, 101),
('Aryan', 20000.0, 102);

insert into project values
(1001, 'Library Mgmt System', 1, 10),
(1002, 'Attendance Mgmt System', 2, 12);

select * from dept;
select * from project;
select * from employee;
