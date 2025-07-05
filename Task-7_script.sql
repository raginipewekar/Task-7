-- task-3_script.sql

-- safety re-run block
DROP DATABASE IF EXISTS EmployeeDB;
CREATE DATABASE EmployeeDB;
USE EmployeeDB;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    post VARCHAR(50),
    salary INT,
    hire_date DATE
);

INSERT INTO employees (id, first_name, last_name, department, post, salary, hire_date) VALUES
(1, 'Rachel', 'Green', 'Sales', 'Sales Executive', 55000, '2018-06-23'),
(2, 'Ross', 'Geller', 'IT', 'Software Engineer', 70000, '2020-01-15'),
(3, 'Chandler', 'bing', 'Sales', 'Sales Manager', 75000, '2017-09-12'),
(4, 'Janice', 'Hosenstein', 'HR', 'HR Executive', 50000, '2019-11-05'),
(5, 'Monica', 'Geller', 'IT', 'DevOps Engineer', 68000, '2021-04-10'),
(6, 'Phoebe', 'Buffay', 'Finance', 'Accountant', 62000, '2016-03-30'),
(7, 'Joey', 'Tribbiani', 'Sales', 'Sales Associate', 45000, '2022-07-21'),
(8, 'Mike', 'Hannigan', 'IT', 'Data Analyst', 63000, '2021-06-14'),
(9, 'Carol', 'Willick', 'HR', 'HR Manager', 80000, '2015-01-01'),
(10, 'Ursuka', 'Buffay', 'Finance', 'CFO', 95000, '2012-08-08');
