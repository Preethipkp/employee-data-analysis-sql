CREATE DATABASE employee_analysis;
USE employee_analysis;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    job_role VARCHAR(50),
    salary DECIMAL(10,2),
    age INT,
    joining_date DATE,
    experience_years INT
);
INSERT INTO employees VALUES
(101, 'Anu', 'IT', 'Data Analyst', 55000, 25, '2022-06-10', 3),
(102, 'Rahul', 'HR', 'HR Executive', 42000, 28, '2021-03-15', 5),
(103, 'Meera', 'IT', 'Python Developer', 65000, 27, '2020-08-20', 6),
(104, 'Arun', 'Finance', 'Accountant', 48000, 30, '2019-01-12', 7),
(105, 'Neha', 'IT', 'Data Scientist', 80000, 29, '2021-11-05', 5),
(106, 'Vishnu', 'HR', 'Recruiter', 40000, 26, '2023-02-18', 2),
(107, 'Sneha', 'Finance', 'Financial Analyst', 60000, 31, '2018-07-25', 8),
(108, 'Akhil', 'IT', 'Web Developer', 52000, 24, '2023-05-14', 2),
(109, 'Divya', 'Sales', 'Sales Executive', 45000, 27, '2022-09-30', 4),
(110, 'Manu', 'Sales', 'Sales Manager', 70000, 35, '2017-04-11', 10);
/*Question 1 — Display all employees*/
SELECT * 
FROM employees;
/*Question 2 — Employees in the IT department/*
SELECT *
FROM employees
WHERE department = 'IT';
/*Question 3 — Employees with salary above 50,000*/
SELECT employee_name, department, salary
FROM employees
WHERE salary > 50000;
/*Question 4 — Sort employees by salary*/
SELECT employee_name, department, salary
FROM employees
ORDER BY salary DESC;
/*Question 5 — Number of employees in each department*/
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;
/*Question 6 — Average salary by department*/
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;
/*Question 7 — Highest salary in each department*/
SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;
/*Question 8 — Departments having more than 2 employees*/
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;
/*Question 9 — Average salary by job role*/
SELECT job_role, AVG(salary) AS average_salary
FROM employees
GROUP BY job_role;
/*Question 10 — Employees with more than 5 years experience*/
SELECT employee_name, job_role, experience_years
FROM employees
WHERE experience_years > 5
ORDER BY experience_years DESC;
CREATE DATABASE employee_analysis;
USE employee_analysis;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    job_role VARCHAR(50),
    salary DECIMAL(10,2),
    age INT,
    joining_date DATE,
    experience_years INT
);
SELECT * FROM employees;
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;
/*Question 2 — Employees in the IT department*/
SELECT *
FROM employees
WHERE department = 'IT';
/*Question 3 — Employees with salary above 50,000*/
SELECT employee_name, department, salary
FROM employees
WHERE salary > 50000;
/*Question 4 — Sort employees by salary*/
SELECT employee_name, department, salary
FROM employees
ORDER BY salary DESC;
/*Question 6 — Average salary by department*/
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;
/*Question 7 — Highest salary in each department*/
SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;
/*Question 8 — Departments having more than 2 employees*/
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;
/*Question 9 — Average salary by job role*/
SELECT job_role, AVG(salary) AS average_salary
FROM employees
GROUP BY job_role;
/*Question 10 — Employees with more than 5 years of experience*/
SELECT employee_name, job_role, experience_years
FROM employees
WHERE experience_years > 5
ORDER BY experience_years DESC;
