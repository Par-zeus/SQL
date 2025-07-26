select * 
from employee_demographics;

SELECT first_name,last_name,birth_date 
FROM employee_demographics
WHERE YEAR(birth_date)>1980;

SELECT gender,AVG(age),MAX(age),MIN(age),count(age)
FROM employee_demographics
group by gender;

SELECT occupation,count(occupation)
FROM employee_salary
GROUP BY occupation;

-- ORDER BY
SELECT *
from employee_demographics
ORDER BY gender,age DESC
;

SELECT *
FROM employee_demographics
GROUP BY gender,age;


SELECT gender,AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age)>40
;

SELECT * FROM employee_salary;


SELECT occupation,AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary)>70000
;

SELECT *
FROM employee_demographics
# WHERE age>35
ORDER BY age ASC
LIMIT 3
;

SELECT * FROM employee_demographics
ORDER BY age ASC
LIMIT 2,1
;

-- ALIASING
SELECT gender,AVG(age) as ag
 FROM employee_demographics
 GROUP BY gender
 HAVING ag>40
;

 