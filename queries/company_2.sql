-- run the company.sql first before this
source company.sql;
use company;

-- alter, rename, update
-- rename
rename table employee to staff;

-- alter
alter table staff add column email varchar(50) unique;
alter table staff alter column salary set default 25000;

-- update
-- update staff set email='yash@company.com' where emp_id=1;
-- update staff set email='aryan@company.com' where emp_id=2;
update staff set email=concat(emp_nm, '@company.com');
-- increase salary by 10%
update staff set salary = salary * 1.10;

select '--- After update ---' as '';
select * from staff;
