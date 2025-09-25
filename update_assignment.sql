use string_functions;
-- 1. Write a SQL statement to change the email column of the employees table with 'not available' for all employees. 
SET SQL_SAFE_UPDATES = 0;
alter table employees drop CONSTRAINT EMP_EMAIL_UK;
UPDATE employees SET email = 'not available';
select * from employees;
desc employees;


-- 2. Write a SQL statement to change the email and commission_pct column of employees 
-- table with 'not available' and 0.10 for all employees. 
UPDATE EMPLOYEES 
SET EMAIL = 'NOT AVAILABLE',COMMISSION_PCT = 0.10;
SELECT * FROM EMPLOYEES;


-- 3. Write a SQL statement to change the email and commission_pct column of employees 
-- table with 'not available' and 0.10 for those employees whose department_id is 110. 
UPDATE EMPLOYEES
SET EMAIL = 'NOT AVAILABLE', COMMISSION_PCT=0.10
WHERE DEPARTMENT_ID = 110;
SELECT * FROM EMPLOYEES;


-- 4. Write a SQL statement to change the email column of employees table with 'not 
-- available' for those employees whose department_id is 80 and gets a commission_pct is 
-- less than .20 
UPDATE EMPLOYEES
SET EMAIL = 'NOT AVAILABLE'
WHERE DEPARTMENT_ID =80 AND COMMISSION_PCT <0.20;
SELECT * FROM EMPLOYEES;

-- 5.  Write a SQL statement to change the email column of the employees table with 'not 
-- available' for those employees who belong to the 'Accounting' department. 
UPDATE EMPLOYEES
SET EMAIL = 'NOT AVAILABLE'
where JOB_ID = 'AC_ACCOUNT';
SELECT * FROM EMPLOYEES;


-- 6. Write a SQL statement to change the salary of an employee to 8000 whose ID is 105, if 
-- the existing salary is less than 5000. 
update employees
set salary =8000
where employee_id = 105 and salary <= 5000;
select * from employees;


-- 7. Write a SQL statement to change the job ID of the employee whose ID is 118, to 
-- SH_CLERK if the employee belongs to the department, whose ID is 30 and the existing 
-- job ID does not start with SH. 
update employees
set job_id ='SH_CLERK'
where employee_id =118 and department_id = 30 and job_id not like 'sh%';
select * from employees;




-- 8. Write a SQL statement to increase the salary of employees under the department 40, 90 
-- and 110 according to the company rules that salary will be increased by 25% for 
-- department 40, 15% for department 90 and 10% for department 110 and the rest of the 
-- departments will remain the same. 
update employees
set salary = case
 when department_id = 40 then salary *1.25
 when department_id = 90 then salary * 1.15
 when department_id  = 110 then salary * 1.10
 else salary
 end;
 
 
 
-- 9. Write a SQL statement to increase the minimum and maximum salary of PU_CLERK by 
-- 2000 as well as the salary for those employees by 20% and commission percent by .10. 
update jobs 
set min_salary = min_salary+2000,max_salary = max_salary + 2000
where job_id = 'PU_CLERK';
select * from jobs;



