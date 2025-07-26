SELECT * 
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT dem.employee_id,age,occupation 
FROM employee_demographics as dem
INNER JOIN employee_salary as sem
ON dem.employee_id= sem.employee_id
;

-- OUTER JOIN

SELECT *
FROM employee_demographics as dem
LEFT JOIN employee_salary as sem
ON dem.employee_id= sem.employee_id
; 

-- Self join
SELECT sem1.employee_id as emp1_santa,
sem1.first_name as first_santa,
sem1.last_name as last_santa,
sem2.employee_id as emp2_santa,
sem2.first_name as first_santa,
sem2.last_name as last_santa
FROM employee_salary as sem1
JOIN employee_salary as sem2
ON sem1.employee_id+1= sem2.employee_id
; 

-- Joining Multiple Tables Together
SELECT dem.first_name,dem.last_name,sem.occupation,department_name
FROM employee_demographics as dem
INNER JOIN employee_salary as sem
ON dem.employee_id= sem.employee_id
INNER JOIN parks_departments as pk
ON sem.dept_id=pk.department_id
;

select *
from parks_departments;

-- UNION
SELECT first_name,last_name 
FROM employee_demographics
UNION ALL
SELECT first_name,last_name
FROM employee_salary;

SELECT first_name,last_name ,'OLD MAN' as Label
FROM employee_demographics
WHERE age>40 AND gender='Male'
UNION 
SELECT first_name,last_name ,'OLD LADY' as Label
FROM employee_demographics
WHERE age>40 AND gender='Female'
UNION 
SELECT first_name,last_name ,'Highly AID' as Label
FROM employee_salary
WHERE salary>70000
ORDER BY first_name,last_name
;
