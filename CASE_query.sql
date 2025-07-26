-- case statements

select first_name,last_name,age,
CASE 
	WHEN age<=30 THEN 'YOUNG' 
    WHEN age BETWEEN 30 AND 40 THEN 'MIDDLE AGE' 
    WHEN age>40 THEN 'OLD' 
END as Label
from employee_demographics;

-- Pay increase and bonuses
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% bonus

select e.first_name,e.last_name,e.occupation,e.salary,p.department_name,
CASE
	WHEN e.salary<50000 THEN  1.05 * e.salary 
    WHEN e.salary>=50000 THEN 1.07 * e.salary
END as New_Salary,
CASE
	WHEN e.dept_id=p.department_id AND p.department_name='Finance' THEN 1.1*e.salary
END as Finance_Bonus
from employee_salary as e
JOIN parks_departments as p
ON e.dept_id=p.department_id
;

select *
from employee_salary;
select *
from parks_departments;