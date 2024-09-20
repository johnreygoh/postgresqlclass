--create a schema
create schema if not exists test;

--create practice tables
--create employeepersonal
drop table if exists test.employeepersonal;
drop table if exists test.employeework;

create table if not exists test.employeepersonal
(
	id serial primary key,
	firstname varchar(50) not null,
	lastname varchar(50) not null,
	address text,
	birthdate date,
	maritalstatus varchar(10)
);

--create employeework
create table if not exists test.employeework
(
	id serial primary key,
	position varchar(50) not null,
	department varchar(50) not null,
	datehired date not null,
	monthlysalary numeric(10,2) --numeric(wholenumber,decimal)
);






