CREATE DATABASE EmployeeDB;
USE EmployeeDB;
CREATE TABLE Employees (
    city VARCHAR(100),
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    designation VARCHAR(100),
    auditor VARCHAR(100),
    department VARCHAR(100),
    salary DECIMAL(10, 2)
);
SELECT*FROM Employees;
ALTER TABLE Employees
DROP COLUMN first_name,
DROP COLUMN last_name;
DESCRIBE Employees;
ALTER TABLE Employees ADD COLUMN employee_name VARCHAR(200) AFTER city;
DESCRIBE Employees;
 INSERT INTO Employees (city, employee_name, designation, auditor, department, salary)
VALUES 
('Karachi', 'Hasan', 'Manager', 'Auditor A', 'Finance', 60000.00),
('Islamabad', 'Mustafa', 'Assistant Manager', 'Auditor B', 'Finance', 50000.00),
('Lahore', 'Asif', 'Analyst', 'Auditor C', 'Finance', 45000.00),
('Lahore', 'Abdullah', 'Team Lead', 'Auditor D', 'HR', 55000.00),
('Karachi', 'Ahmed', 'Coordinator', 'Auditor E', 'HR', 48000.00),
('Faisalabad', 'Shayan', 'Supervisor', 'Auditor F', 'HR', 52000.00),
('Karachi', 'Izhan', 'Director', 'Auditor G', 'Marketing', 70000.00),
('Islamabad', 'Saeed', 'Executive', 'Auditor H', 'Marketing', 80000.00),
('Peshawar', 'Shahkar', 'Specialist', 'Auditor I', 'Marketing', 60000.00),
('Quetta', 'Alam', 'Associate', 'Auditor J', 'Marketing', 55000.00);

SELECT employee_name,designation,department FROM Employees;
SELECT COUNT(*) AS total_auditor FROM Employees WHERE designation='auditor';
SELECT city,department,COUNT(*) AS num_employees FROM Employees GROUP BY city,department;
SELECT department, AVG(salary) AS average_salary FROM Employees GROUP BY department;
SELECT designation, SUM(salary) AS total_salary_expense FROM Employees GROUP BY designation ORDER BY total_salary_expense DESC;
SELECT COUNT(*) AS total_records FROM Employees;
SELECT city,department,ROUND(AVG(salary),2) AS average_salary FROM Employees GROUP BY city,department HAVING AVG(salary)>=70000;