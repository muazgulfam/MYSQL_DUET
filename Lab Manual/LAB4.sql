CREATE DATABASE 10Pearls;
use 10Pearls;
CREATE TABLE Employee(
	employeeID int (10) not null auto_increment primary key,
    firstName varchar(40),
    lastName varchar(40),
    hiringDate date,
    deptID varchar (10),
    jobID varchar (10)
);
DESCRIBE Employee;

CREATE TABLE Department(
	deptID varchar(10),
    deptName varchar(45),
    locationID varchar(20)
);
DESCRIBE Department;

CREATE TABLE Job(
	jobID varchar(10),
    jobTitle varchar(40),
    slaray int
);
DESCRIBE Job;

CREATE TABLE Location(
	locationID varchar(20),
    city varchar(40),
    country varchar(40)
);
DESCRIBE Location;

INSERT INTO Employee 
	values 
		(null, "Abdullah", "Junejo", "2010-07-02", "D1", "SoftDev011"),
        (null, "Zia", "Khan", "2008-02-02", "D3", "MAN112"),
        (null, "Faris", "Naeem", "2009-05-25", "D1", "SoftDev011"),
        (null, "Zeeshan", "Riaz", "2012-07-01", "D2", "MRK007"),
        (null, "Moosa", "Shehzad", "2016-10-10", "D1", "SoftDev011"),
        (null, "Riyan", "Khan", "2011-04-01", "D2", "MRK007"),
        (null, "Brad", "Pitt", "2010-02-28", "D1", "SoftDev011");
SELECT * FROM Employee;

INSERT INTO Department 
	values 
		("D1", "Development", "Khi001"),
        ("D2", "Marketing", "Lah002"),
        ("D3", "Management", "Khi010"),
        ("D4", "HR", "Isl003"),
        ("D5", "Finance", "Khi001");
SELECT * FROM Department;        
        
INSERT INTO Job
	values 
		("SoftDev011", "Software Developer", 300000),
        ("MAN112", "Manager", 150000),
        ("MRK007", "SEO Engineer", 100000),
        ("FIN002", "Accountant", 95000);
SELECT * FROM Job;        
        
INSERT INTO Location
	values 
		("Khi001", "Karachi", "Pakistan"),
        ("Khi010", "Karachi", "Pakistan"),
        ("Lah002", "Lahore", "Pakistan"),
        ("Isl003", "Islamabad", "Pakistan"),
        ("Fsl004", "Faislabad", "Pakistan");
SELECT * FROM Location;        
        
INSERT INTO Location values (null, "Karachi", "Pakistan");
SELECT * FROM Location;

ALTER TABLE Employee
MODIFY COLUMN firstName VARCHAR(40) NOT NULL,
MODIFY COLUMN lastName VARCHAR(40) NOT NULL;
DESCRIBE Employee;

ALTER TABLE Department
MODIFY COLUMN deptName VARCHAR(45) NOT NULL;
DESCRIBE Department;
        
ALTER TABLE Job
MODIFY COLUMN jobTitle VARCHAR(40) NOT NULL;
DESCRIBE Job;