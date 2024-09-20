--Select statements

--select col1,col2 from table expr


--get all
--select * from test.employeework;
--select * from test.employeepersonal;

--get all records showing first, last, birth
--select firstname,lastname,birthdate from test.employeepersonal;
--select 
--	firstname as "FIRST NAME",
--	lastname as "LAST NAME",
--	birthdate as "BIRTH DATE" 
--from test.employeepersonal;

--get records based on a value
--select * 
--from test.employeework 
--where department = 'HR'
--	and position = 'Assistant';

--get records based on an estimated value

--select * 
--from test.employeework 
--where monthlysalary >= 50000
--	and monthlysalary <= 60000;

--select * 
--from test.employeework 
--where monthlysalary between 40000 and 50000;

--LIKE
--select * from test.employeepersonal
--where lastname like 'S%';

--select * from test.employeepersonal
--where lastname like '%z';

--select * from test.employeepersonal
--where lastname like '%o%';

--select * from test.employeepersonal
--where lastname like '%to_';

--select * from test.employeepersonal
--where firstname like '% %';

--select lastname from test.employeepersonal
--order by lastname;

--select * from test.employeepersonal
--order by birthdate desc 
--limit 3;

--select distinct department from test.employeework;

--select * from test.employeework 
--where department in ('HR','MIS');

--joins
--select 
--	p.firstname as "First Name",
--	p.lastname as "Last Name",
--	w.monthlysalary as "Monthly Salary"
--from
--	test.employeepersonal p
--inner join 
--	test.employeework w
--on p.id = w.id
--order by w.monthlysalary desc;	

--aggregate functions (against a group)
--sum, max, min, avg, count, count(distinct)
--select count(id) from test.employeepersonal;
--select department, count(id), sum(monthlysalary) as "Total Salary"
--from test.employeework
--group by department
--order by "Total Salary" desc;

--how much total salary for all manager positions?
--select position, sum(monthlysalary)
--from test.employeework
--where position = 'Manager'
--group by position;

--average monthly salary per department, employees with > 60000
--select department, avg(monthlysalary) as AverageMSalary
--from test.employeework
--where monthlysalary > 60000 --what to compute
--group by department
--having avg(monthlysalary) > 70000 --what to display from the group;

--employee with highest salary
--select 
--	p.firstname,
--	w.monthlysalary
--from 
--	test.employeepersonal p
--left outer join
--	test.employeework w
--on p.id = w.id
--order by w.monthlysalary desc 
--limit 2;































