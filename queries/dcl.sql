drop user if exists 'testuser'@'localhost';

create user 'testuser'@'localhost' identified by 'pass';

grant select, insert on bank.* to 'testuser'@'localhost';
