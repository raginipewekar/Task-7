-- Use your existing database
USE EmployeeDB;

-- View 1: Employees with salary > 65000
CREATE VIEW high_salary_employees AS
SELECT id, first_name, last_name, department, post, salary
FROM employees
WHERE salary > 65000;

-- View 2: Average salary by department
CREATE VIEW department_avg_salary AS
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- View 3: Employees hired in the last 2 years
CREATE VIEW recent_hires AS
SELECT id, first_name, last_name, department, post, hire_date
FROM employees
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR);

-- View 4: IT Department employees only (with CHECK OPTION)
CREATE VIEW only_it_department AS
SELECT * FROM employees
WHERE department = 'IT'
WITH CHECK OPTION;
