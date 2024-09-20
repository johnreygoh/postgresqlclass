--create a simple table using cte
--virtual
with 
emps as 
(
	select * from test.employeepersonal
	where maritalstatus = 'married'
),

emps2 as 
(
	select * from test.employeepersonal
	where maritalstatus = 'single'
),

tot_sal_dept as 
(
	select department, sum(monthlysalary) 
	from test.employeework
	group by department
),

employees as
(
	select 
		p.firstname,
		p.lastname,
		p.address,
		p.birthdate,
		p.maritalstatus,
		w.position,
		w.department,
		w.datehired,
		w.monthlysalary
	from 
		test.employeepersonal p
	inner join
		test.employeework w 
	on p.id = w.id
)


select * from emps2;

