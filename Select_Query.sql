SELECT * 
FROM employee_demographics;

SELECT DISTINCT gender FROM employee_demographics;

SELECT *
FROM employee_salary;

# PEMDAS :- Parenthesis Exponent Multiplication Divide Add Subtract
  
SELECT first_name,last_name,
salary,
salary+15000 as new_salary
FROM employee_salary 

