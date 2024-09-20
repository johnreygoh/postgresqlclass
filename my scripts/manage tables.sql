--schema
create schema if not exists test;

--manage table
create table if not exists test.products
(
	id serial primary key,
	productname varchar(50) not null,
	price money
);

--alter to add column
alter table test.products 
add column description varchar(100);

--alter to drop column
alter table test.products 
drop column description;

--drop table
drop table if exists test.products;

--drop schema
drop schema if exists test;








