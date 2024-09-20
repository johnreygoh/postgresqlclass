--subqueries

--average salary
--select avg(monthlysalary) from test.employeework;
--find employees whose salary is greater than average salary
select p.firstname,p.lastname,w.monthlysalary
from 
	test.employeepersonal p
inner join 
	test.employeework w
on p.id=w.id
where p.id in (
	select id from test.employeework
	where monthlysalary > (select avg(monthlysalary) from test.employeework)
);


--total salary per department using subquery
--subquery used as alt to table
select department, sum(monthlysalary) as "total_salary"
from (select department, monthlysalary from test.employeework)
group by department
order by total_salary desc;


--find employees with above each department average salary
--select 'hello' as greet;
--select 100 + 34 as answer;
select firstname,lastname,ew.department,ew.monthlysalary 
from test.employeepersonal p
inner join test.employeework ew
on p.id = ew.id
where exists (
	select 1 
	from  test.employeework w
	where 
		p.id = w.id
	and
		w.monthlysalary > (
			select avg(monthlysalary) 
			from test.employeework 
			where department = w.department
		)
);


--find employees highest salary for each department
--select department,max(monthlysalary) as max_salary
--from test.employeework
--group by department 
--order by max_salary;


select 
	p.firstname,
	p.lastname,
	w2.department,
	(
		select max(monthlysalary) 
		from test.employeework w
		where w.department = w2.department
	) as max_salary
from 
	test.employeepersonal p
inner join
	test.employeework w2
on
	p.id = w2.id
where w2.monthlysalary in 		--not in
	(
		select max(monthlysalary)
		from test.employeework
		group by department
	)
order by max_salary desc;

--show all except max salaries
select 
	p.firstname,
	p.lastname,
	w2.department,
	w2.monthlysalary 
from 
	test.employeepersonal p
inner join
	test.employeework w2
on
	p.id = w2.id
where w2.monthlysalary not in 
	(
		select max(monthlysalary)
		from test.employeework
		group by department
	)
order by w2.monthlysalary desc;


--show employees with salary greater than 80000
--1. get all records with the condition
--2. use the result with another query
select p.firstname,p.lastname,w.monthlysalary 
from 
	test.employeepersonal p
inner join	
	test.employeework w
on
	p.id=w.id
where exists (
	select 1
	from test.employeework w
	where 
		w.id=p.id
	and 
		w.monthlysalary > 80000
);


--subquery with update
--increase salary by 500 for employees 20yrs+ in company
update test.employeework 
set monthlysalary = monthlysalary + 500
where id in 
(
	select id 
	from  test.employeework 
	where date_part('year',age(datehired)) >= 20 
);

--subquery with delete
--insert into test.employeepersonal 
--(firstname,lastname,address,birthdate,maritalstatus)
--values
--('Gener','Baguio','333 Coast PH','1980-3-5','Married');

--delete records in personal without work info
delete from test.employeepersonal
where id not in 
(
	select id from test.employeework 
);

--insert record with subquery
--1. select records from table1
--2. insert into table2
insert into test.newtable
	select * from test.employeepersonal 
	where maritalstatus = 'single';


--sum of salaries
select sum(monthlysalary) from test.employeework;









 


























