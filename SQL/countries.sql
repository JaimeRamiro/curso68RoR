select * from cities;
select * from countries;
select * from languages;

select lg.id,lg.language, lg.percentage from languages lg where lg.language like '%loven%';

select cou.name 
from countries cou 
where cou.id =16 or  cou.id =96 or cou.id =107 or cou.id =200;

select lg.language,lg.percentage, cou.name 
from languages lg, countries cou 
where lg.country_id = cou.id 
and lg.language = 'Slovene'
 ;