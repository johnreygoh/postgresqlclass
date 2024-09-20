--create functions

--uppercase fullname
--concat fields + upper
--test.fulln(a,b)
--create function test.fulln(fi varchar,la varchar)
--returns varchar
--language plpgsql
--as 
--$$
--declare	fn varchar;
--begin
--	fn = upper(concat(fi,' ',la));
--	return fn;
--end
--$$

--select test.fulln(firstname,lastname) 
--from test.employeepersonal;

--deductions = monthlysalary - 15%
--netsalary = monthlysalary - deductions
--fullname | monthlysalary | deductions | netsalary
create or replace function test.getdeductions(sal numeric)
returns numeric
language plpgsql
as
$$
declare deduc numeric;
begin
	deduc = sal * 0.1;
	return deduc;
end
$$

--create function test.netsal(sal numeric)
--returns numeric
--language plpgsql
--as
--$$
--declare netsal numeric;
--begin
--	netsal = sal - test.getdeductions(sal);
--	return netsal;
--end
--$$

select 
	test.fulln(firstname,lastname) as "full name",
	monthlysalary,
	test.getdeductions(monthlysalary) as deductions,
	test.netsal(monthlysalary) as "net salary"
from test.employees;















