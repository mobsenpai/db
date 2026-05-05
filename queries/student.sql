drop database if exists student;

create database student;
use student;

create table bca (
    id int primary key,
    name varchar(30),
    marks integer
);

insert into bca values
(1, 'Yash', 90),
(2, 'Aryan', 40),
(3, 'Rudra', 100),
(4, 'Pritam', 70),
(5, 'Connor', 30);

create table bba (
    id int primary key,
    name varchar(30),
    marks integer
);

insert into bba values
(101, 'Yash', 70),
(102, 'Rohan', 90);


-- selection
-- retrieve with condition
select 'selection marks > 70' as '';
select * from bca where marks > 70;

-- projection
-- retrieve specific columns
select 'projection name, marks' as '';
select name, marks from bca;

-- union
-- all
select 'union name bca and bba' as '';
select name from bca
union
select name from bba;

-- intersection
-- common
select 'intersection common marks in bba and bca' as '';
select bca.name, bca.marks, bba.name, bba.marks
from bca
inner join bba
on bca.name=bba.name;


-- difference
-- one not in another
select 'difference students of bca with name not in bba' as '';
select name, marks
from bca
where name not in (select name from bba);

-- rename
-- using alias
select name as students_names from bca;

-- join
-- already practiced see join related files

-- division
