drop database if exists sales;

create database sales;
use sales;

create table orders (
    order_id int primary key auto_increment,
    product varchar(50),
    category varchar(30),
    quantity int,
    price decimal(10,2),
    order_date date
);


insert into orders (product, category, quantity, price, order_date) values
('Laptop', 'Electronics', 2, 55000.10, '2025-09-01'),
('Shirt', 'Apparel', 4, 2000, '2025-11-02'),
('Table', 'Furniture', 10, 5000, '2024-12-12'),
('Keyboard', 'Electronics', 5, 800, '2025-09-02'),
('Mouse', 'Electronics', 12, 90, '2021-01-23');

select 'All orders -' as '';
select * from orders;

-- order by
select 'order - price low to high -' as '';
select product, price from orders order by price asc;

select 'order - by category -> price' as '';
select product, category, price from orders order by category, price;

-- where
select 'where price > 100 -' as '';
select * from orders where price > 1000;


-- group by (aggregation)
select 'group by category - total quantity' as '';
select category, sum(quantity) as total_quantity
from orders
group by category;

select 'group by category - total amount' as '';
select category, sum(price) as total_amount
from orders
group by category;

select 'group by category - total products' as '';
select category, count(*) as total_products
from orders
group by category;

-- having
select 'group by category - total quantity > 5' as '';
select category, sum(quantity) as total_quantity
from orders
group by category
having sum(quantity) > 5;
