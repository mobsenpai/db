drop database if exists datatypes_db;

create database datatypes_db;
use datatypes_db;

create table products (
    prod_id int primary key auto_increment,
    prod_nm varchar(100) not null,
    price decimal(10,2),
    description text,
    manufacture_date date,
    prod_img blob
);

insert into products (prod_nm, price, description, manufacture_date) values
('Laptop', 55000.0, 'High performance gaming laptop', '2025-01-02');

select * from products;

desc products;
