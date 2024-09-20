--clear contents of table
truncate table test.employeepersonal;
truncate table test.employeework; 

--insert records

--structure with columns
--insert into <table> (col1,col2,col3,...) values (val1,val2,val3,...)

--structure without columns
--insert into <table> values (val1,val2,val3,...)
insert into test.employeepersonal 
(firstname,lastname,address,birthdate,maritalstatus)
values
('John','Doe','123 Oak Street','1980-10-15','married'),
('Jane','Smith','444 Clover Lane','1982-09-20','single'),
('Oliver','Reyes','678 Golden Bridge','1977-10-10','married'),
('Kat','Sanchez','567 Red Street','1992-10-11','single'),
('Jerry','Anvil','111 Flower Street','1968-2-2','single'),
('Daniel','Santos','899 Diamond Road','1977-10-12','married'),
('Kevin','Harl','334 Bethel Street','1980-3-15','married'),
('Diana','Dive','456 Goose Lane','1988-5-15','married'),
('Silvie','Gomez','12 Apple Lane','1989-3-15','married'),
('Yena','Indi','344 Orange Road','1979-8-15','single');

insert into test.employeework 
(position,department,datehired,monthlysalary)
values
('Admin','MIS','2002-10-15',70000.00),
('Assistant','HR','2012-08-15',45000.00),
('Programmer','MIS','2004-10-15',65000.00),
('Programmer','MIS','2003-8-15',55000.00),
('Admin','Accounting','2001-10-15',67000.00),
('Manager','MIS','2000-10-15',80000.00),
('Manager','HR','2000-10-15',80000.00),
('Assistant','HR','2009-07-15',50000.00),
('Admin','MIS','2001-5-15',50000.00),
('Admin','MIS','2001-6-15',55000.00);








