--more select scripts

--random samples
--random()
--select * from test.employeepersonal
--order by random()
--limit 3;

--tablesample system (percent) < v9
--select * from test.employeepersonal
--tablesample system (50);

--tablesample bernoulli (percent) > v9.5
--select * from test.employeepersonal
--tablesample bernoulli (10);




