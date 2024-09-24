--create table employeeskills(
--	id int primary key,
--	name varchar,
--	skills text[]
--);

--insert into employeeskills values (1,'Kevin',array['web','database','network']);
--insert into employeeskills values (2,'Hannah',array['web','analytics']);

--select * from employeeskills;

--access?
--select name,skills[1] as s1, skills[2] as s2, skills[3] as s3
--from employeeskills
--where name='Kevin';

--all records with 'web' skill
--select * from employeeskills
--where 'web' = any(skills);

--add value to array
--add skill to hannah
update employeeskills 
set skills = array_append(skills,'ML')
where name = 'Hannah';

--remove item from array
update employeeskills 
set skills = array_remove(skills,'analytics')
where name = 'Hannah';

--count items in array
select name, array_length(skills,1) as skills_count from employeeskills;










