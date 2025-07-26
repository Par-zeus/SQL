SELECT * 
FROM employee_demographics;

SELECT * 
FROM employee_demographics
WHERE gender ='Male' 
AND birth_date > '1985-01-11';

SELECT * 
FROM employee_demographics
WHERE (gender='Male' && age=43) || age>50;


-- LIKE statement
-- % anything 
-- - one value
SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'A%' OR last_name LIKE '%r' OR first_name LIKE 'B__'
; 
DESC employee_demographics;

SELECT * 
FROM employee_salary;


SET SQL_SAFE_UPDATES = 0;

UPDATE employee_salary
SET salary=89000
WHERE occupation='Nurse';