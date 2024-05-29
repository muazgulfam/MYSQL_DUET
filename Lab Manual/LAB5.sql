CREATE DATABASE abcSoftware;
use abcSoftware;
create table Employee(
    empID INT AUTO_INCREMENT PRIMARY KEY,
    empName VARCHAR (50),
    department VARCHAR (50),
    designation VARCHAR(50),
    empExperience INT,
    Salary INT
);
INSERT INTO Employee values
	(null, "Ali", "Marketing", "SEO Specialist", 4, 20000),
    (null, "Ahmed", "HR", "Recruitment Manager", 1, 10000),
    (null, "John Doe", "Developer", "FrontEnd Developer", 2, 100000),
    (null, "William", "Finance", "Auditor", 4, 6000),
    (null, "Talha", "Finance", "Accountant", 2, 15000),
    (null, "Willian", "HR", "HR Coordinator", 4, 6000);
    
    
SELECT empName, designation, Salary FROM Employee WHERE Salary = (SELECT MAX(Salary) FROM Employee);


SELECT empName, empExperience FROM Employee WHERE empExperience = (SELECT MAX(empExperience) FROM Employee); 


SELECT empName, Salary FROM Employee WHERE Salary > (SELECT AVG(Salary) FROM Employee);


/*SELECT empName, department FROM Employee WHERE Salary = (SELECT MAX(Salary) From Employee) HAVING department = "HR" AND "Marketing" AND "Developer" AND "Finance";*/
/*SELECT empName, department FROM Employee WHERE Salary = (SELECT MAX(Salary) From Employee) GROUP BY department;*/
SELECT empName, department, Salary FROM Employee AS e WHERE Salary = ( SELECT MAX(Salary) FROM Employee AS e2 WHERE e2.department = e.department);