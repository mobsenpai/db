drop database if exists test_db;

create database test_db;
use test_db;

create table sample (
    id int primary key auto_increment,
    name varchar(50)
);

insert into sample (name) values
('Yash'),
('Aryan'),
('Pritam'),
('Rudra'),
('Connor');

select 'All data before - ' as '';
select * from sample;

-- delete
select 'after deleting Aryan row' as '';
delete from sample where id = 1;
select * from sample;

-- truncate
select 'after truncate' as '';
truncate table sample;
select * from sample;
desc sample;

-- drop
select 'after drop' as '';
drop table sample;
select * from sample;
