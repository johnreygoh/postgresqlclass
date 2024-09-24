--create table employeedetails(
--	id int primary key,
--	name varchar,
--	details jsonb
--);

--insert into employeedetails
--values 
--(
--	1,
--	'Diane',
--	'{"age":23,"address":"Pasig","skills":["web","sql"]}'
--),
--(
--	2,
--	'Fiona',
--	'{"age":27,"address":"Manila","skills":["excel","sql"]}'
--);

select * from employeedetails;

--extract values from json
select 
	name,
	details->'age' as age,
	details->'address' as address,
	details->'skills'->>0 as s1,
	details->'skills'->>1 as s2,
	jsonb_array_length(details->'skills') as skillcount 
from employeedetails;

--update age diane 32
update employeedetails 
set details = jsonb_set(details,'{age}','32')
where name = 'Diane';

--remove a key-value pair
update employeedetails
set details = details - 'age'
where name = 'Fiona';

--insert a key-value pair
update employeedetails 
set details = jsonb_insert(details,'{age}','22')
where name = 'Fiona';














