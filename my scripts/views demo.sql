--create a view
--create view test.singleemps
--as
--	select * from test.employeepersonal 
--	where maritalstatus = 'single'
--;
--create view test.marriedemps
--as
--	select * from test.employeepersonal 
--	where maritalstatus = 'married'
--;
--create view test.tot_sal_per_dept
--as
--	select department, sum(monthlysalary) 
--	from test.employeework
--	group by department
--;
--create view test.employees
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


select * from test.tot_sal_per_dept;










