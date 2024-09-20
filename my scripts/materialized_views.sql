--create a materialized view
--create materialized view test.mat_singleemps
--as
--	select * from test.employeepersonal 
--	where maritalstatus = 'single'
--;


--create materialized view test.mat_marriedemps
--as
--	select * from test.employeepersonal 
--	where maritalstatus = 'married'
--;
--
--create materialized view test.mat_tot_sal_per_dept
--as
--	select department, sum(monthlysalary) 
--	from test.employeework
--	group by department
--;
--
--create materialized view test.mat_employees
--as
--	select 
--		p.firstname,
--		p.lastname,
--		p.address,
--		p.birthdate,
--		p.maritalstatus,
--		w.position,
--		w.department,
--		w.datehired,
--		w.monthlysalary
--	from 
--		test.employeepersonal p
--	inner join
--		test.employeework w 
--	on p.id = w.id
--;

refresh materialized view test.mat_singleemps; 
select * from test.mat_singleemps;











