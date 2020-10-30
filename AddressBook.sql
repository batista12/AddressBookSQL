#UC1
create database addressbook_service;
use addressbook_service;
#UC2
create table addressbook
(
   first_name    varchar(100) not null,
   last_name     varchar(100) not null,
   address       varchar(500), 
   city	   	 varchar(50),
   state	 varchar(50),
   zip		 int unsigned,
   phone_number	 int unsigned,
   email_id    	 varchar(100) not null,
   primary key   (email_id)
);
#UC3
insert into addressbook
(first_name, last_name, address, city, state, zip, phone_number, email_id)
values
('Manasi', 'Singh', 'Agr', 'Agrico', 'Jharkhand', 8658965, 9854764464, 'manasi@gmail.com'),
('Riya', 'Raj', 'xyz', 'Agrico' ,'Jharkhand', 987654, 9786543323, 'riya@ewretr.com');

