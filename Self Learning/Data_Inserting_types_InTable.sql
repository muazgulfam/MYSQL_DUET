CREATE DATABASE DUET;

use DUET;

CREATE TABLE student (
	studId int primary key,
    studName varchar(50) not null,
    studAge int not null,
    DepartName varchar(45) not null
);

INSERT INTO student values (1, "Ammar", 18, "Computer Science");
INSERT INTO student values (2, "Asim", 19, "Computer System");

INSERT INTO student (studId, studName, DepartName, studAge) values (3, "Aqib", "Telecom", 19); 
INSERT INTO student (studId, studName, DepartName, studAge) values (4, "Amir", "Cyber Security", 18);

INSERT INTO student (studId, studName, DepartName, studAge) 
	values 
		(5, "Asif", "Data Science", 20),
        (6, "Ahmed", "Aritificial Intelligence", 19),
        (7, "Ammad", "Computer Science", 21);

SELECT * from student;