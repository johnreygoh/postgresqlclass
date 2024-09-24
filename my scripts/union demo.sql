--union statement
select id,prodname,concat('t1_',prodname) as product,salesamount,'sales2020' as table from sales2020
union all
select id,itemname,concat('t2_',itemname) as product,salesamount,'sales2021' as table from sales2021
union all
select id,prodname,concat('t3_',prodname) as product,salesamount,'sales2022' as table from sales2022 where salesamount > 5000
order by id;
