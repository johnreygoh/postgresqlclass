--create table salesreport(
--	id int primary key,
--	product varchar,
--	quantity int,
--	amount numeric(10,2)
--);

--insert into salesreport
--values
--(1,'chair',23,23000.00),
--(2,'table',3,33000.00),
--(3,'door',10,35000.00);

--audit table / transaction log table
--create table salesreport_audit(
--	id serial primary key,
--	product varchar,
--	quantity int,
--	amount numeric(10,2),
--	datesold date
--);

select * from salesreport;

--create trigger function
create or replace function log_sales()
returns trigger
as 
$$
begin
	insert into salesreport_audit
	(product,quantity,amount,datesold,"action")
	values
	(NEW.product,NEW.quantity,NEW.amount,now(),'insert');

	return NEW;
	
end;
$$ 
language plpgsql;


--create trigger (event)
create or replace trigger trigger_sales_insert
after insert on salesreport
for each row
execute function log_sales();

select * from salesreport;
select * from salesreport_audit;

insert into salesreport 
values (13,'speakers',10,2500.00);

truncate table salesreport_audit;


--create trigger function update operation
create or replace function log_sales_updates()
returns trigger 
as 
$$
begin
	--update, OLD & NEW
	insert into salesreport_audit
	(product,quantity,amount,datesold,"action")
	values
	(
		concat(NEW.product,'(',OLD.product,')'),
		concat(NEW.quantity,'0',OLD.quantity)::int,
		OLD.amount,
		now(),
		'update'
	);

	return NEW;

end;
$$
language plpgsql;


--create an event
create or replace trigger trigger_sales_update
after update on salesreport
for each row 
execute function log_sales_updates();


select * from salesreport;
select * from salesreport_audit;

update salesreport 
set 
	product='bluetooth mouse',
	quantity=10,
	amount=3000
where id=10;


insert into salesreport 
values (16,'cp charger',20,40000);


--create a function to add an entry to audit for every deletion
create or replace function log_sales_deletion()
returns trigger 
as 
$$
begin
	insert into salesreport_audit
	(product,quantity,amount,datesold,"action")
	values
	(OLD.product,OLD.quantity,OLD.amount,now(),'delete');

	return NEW;

end;
$$
language plpgsql;


--create an event trigger
create or replace trigger trigger_sales_delete
after delete on salesreport
for each row 
execute function log_sales_deletion();

select * from salesreport;
select * from salesreport_audit;

delete from salesreport 
where id=9;

--disable and enable trigger
--alter table salesreport 
--disable trigger trigger_sales_delete;
alter table salesreport 
enable trigger trigger_sales_delete;







