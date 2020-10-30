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
#UC4
update addressbook
set city = 'Agrico' where name = 'Ritu';
#UC5
delete from addressbook where first_name = 'Riya' and last_name = 'Raj';
#UC6
select * from addressbook where city = 'Agrico' or state = 'Jharkhand';
#UC7
select city, count(*) from addressbook group by city;
select state, count(*) from addressbook group by state;
#UC8
select * from addressbook where city = 'Agrico' order by first_name;
#UC9
ALTER TABLE addressbook ADD name VARCHAR(100);
ALTER TABLE addressbook ADD type VARCHAR(100);
ALTER TABLE addressbook ALTER type SET DEFAULT 'Friend';
INSERT INTO addressbook VALUES
( 'Neha', 'Singh', 'Agrico','jharkhand', '62971', '9215679900', 'neha@gmail.com','Neha Singh','Family'),
( 'Rita', 'Singh', 'jenna','jharkhand', '987653', '8508995688', 'rita@gmail.com','Priya Singh','Friend');
#UC10
SELECT type, COUNT(first_name) FROM addressbook GROUP BY type;

