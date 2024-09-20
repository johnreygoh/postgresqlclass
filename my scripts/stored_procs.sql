--stored procedures

--insert values to 2 tables
--create or replace procedure test.addrec
--(
--	f varchar,
--	l varchar,
--	a text,
--	bd date,
--	s varchar,
--	p varchar,
--	d varchar,
--	dh date,
--	ms numeric
--)
--language plpgsql
--as 
--$$
--begin
--	insert into test.employeepersonal
--	(firstname,lastname,address,birthdate,maritalstatus)
--	values (f,l,a,bd,s);
--
--	insert into test.employeework
--	(position,department,datehired,monthlysalary)
--	values (p,d,dh,ms);
--end
--$$

--call test.addrec('ben',
--		'ten',
--		'222 holy lane',
--		'1980-4-2',
--		'single',
--		'dev',
--		'MIS',
--		'2005-2-2',
--		50000);

--select * from test.employees;
--drop function test.dept;


--TEST:::
--create or replace procedure test.dept()
--language plpgsql
--as 
--$$
--begin
--	select * from test.employees;
--end
--$$;

--call test.dept;


--stored procedure for delete
create or replace procedure test.delrec(eid numeric)
language plpgsql
as $$
begin
	delete from test.employeepersonal where id = eid;
	delete from test.employeework where id = eid;
end
$$;

call test.delrec(10);
















