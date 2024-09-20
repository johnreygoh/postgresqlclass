--function

--functionname(param1,param2)
--string
--select upper('john');
--select lower('JOhn');
--select substring('maxicare' from 1 for 3);
--select substr('maxicare',1,5)
select length(trim('   maxicare   '));
select concat('jojo',' ','gomez');
select replace('maxicare','c','k');
select replace('maxi care',' ','');
select replace('maxi care',' ','-');
select replace('maxi care','ca','key');

select 
	replace(upper(concat(firstname,' ',lastname)),' ','_') as fullname,
	concat(id,left(firstname,3),'-',right(lastname,3)) as code
from
	test.employeepersonal;

--cap last letter
select 
	concat(lower(substr(firstname,1,length(firstname)-1)),upper(right(firstname,1)))
from 
	test.employeepersonal;


select 
	initcap(firstname),
from 
	test.employeepersonal;


select 
	concat(
		upper(left(split_part('yes sir',' ',1),1)),
		substr(split_part('yes sir',' ',1),2,length(split_part('yes sir',' ',1))),
		' ',
		upper(left(split_part('yes sir',' ',2),1)),
		substr(split_part('yes sir',' ',2),2,length(split_part('yes sir',' ',2)))
		)
;
		
--date and time function
select current_date; 
select current_time; 
select age(current_date,'2009-1-12');
select date_part('year',current_date); 
select now(); 

select
	upper(concat(firstname,' ',lastname)) as fullname,
	date_part('year',birthdate) as birthyear,
	age(current_date,birthdate) as age
from
	test.employeepersonal;


--aggregate
select 
	count(monthlysalary) as count,
	min(monthlysalary) as minimum,
	max(monthlysalary) as maximum,
	sum(monthlysalary) as total,
	avg(monthlysalary) as average
from test.employees;

--numerical
select round(123.456789,2) as round;
--ceil and floor
--ceil 123.456789, closest integer not less than the given
select ceil(123.456789) as ceiling;
--floor 123.456789, closest integer not greater than the given
select floor(123.456789) as floor;

--exponent
select power(2,3);

--mod, remainder
select mod(10,4);



















