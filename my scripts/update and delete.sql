select * 
from 
	test.employeepersonal p
inner join 
	test.employeework w
on p.id=w.id;

--update a record
update test.employeepersonal 
set 
	maritalstatus = 'married'
where 
--	firstname = 'Jane' and lastname = 'Smith'
	id = 2;

--update records with similarities
update test.employeework 
set 
	monthlysalary = 70000
where 
	department = 'MIS';

--update specified records
--ex id(2,6,9) 50000
update test.employeework 
set monthlysalary = 50000
where id in (2,6,9);

--sample: increase salary (+2000) all married status
--1. get all ids with married status
--select id from test.employeepersonal where maritalstatus = 'married';
--2. use the first query as basis for another query
update test.employeework 
set monthlysalary = monthlysalary + 99
where id in 
(select id from test.employeepersonal where maritalstatus = 'married');

--error scenario
--update test.employeepersonal 
--set maritalstatus = 'single';
--rollback;

--delete statements
--delete from test.employeepersonal 
--where id = 8; 

--delete from test.employeework 
--where department = 'HR'; 

truncate table test.employeepersonal; 

rollback;





