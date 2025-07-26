-- String function

select length('seyfall');
select char_length('seyfall');
select upper('skyfall');
select lower('SKyfaLL');

select first_name,char_length(first_name)
from employee_demographics
order by 2
;

-- TRIM
select rtrim('           sky            ');

-- substr
select first_name,
left(first_name,3) as lefty,
right(first_name,3) as righty,
substring(first_name,2,4) as indexbased, -- from position 2 want 4 characters
birth_date,
substring(birth_date,6,2) as born_month
from employee_demographics;

-- replace
select first_name,upper(first_name) as up,
replace(first_name,'r','u')
from employee_demographics;

-- locate
select locate('x','alexander');
select first_name,locate('on',first_name)
from employee_demographics;

-- concat
select first_name,last_name,
concat(first_name,' ',last_name) as full_name
from employee_demographics;
