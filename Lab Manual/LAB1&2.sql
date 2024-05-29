CREATE DATABASE studentDB;
SHOW databases;

USE studentDB;

CREATE TABLE stud_data(
	stud_id int(3) primary key,
    stud_name varchar(50),
    stud_phone int(7),
    stud_gpa int(1)
);

SHOW tables;

SELECT * FROM stud_data;

RENAME TABLE stud_data TO student;

ALTER TABLE student 
	CHANGE COLUMN stud_id id int(3),
    CHANGE COLUMN stud_name naame varchar(50),
    CHANGE COLUMN stud_phone phone int(10),
    CHANGE COLUMN stud_gpa gpa float(3,2);

SELECT * FROM student;


INSERT INTO student 
	values 
		(1, "Ammar", 0123456789, 3.0),
        (2, "Asim", 0246802468, 2.5),
        (3, "Aqib", 246810121,4.0),
        (4, "Ahmed", 1357913579,3.5);
        
        
SELECT * FROM student;

SELECT * FROM student LIMIT 1,1;

DELETE FROM student WHERE id = 3;
SELECT * FROM student;


INSERT INTO student (id, naame)
	values 
		(5, "Amir"),
        (6, "Ammar");
        
SELECT * FROM student;    

UPDATE student SET phone = 1234567898, gpa = 2.0 WHERE id = 5; 
UPDATE student SET phone = 1234567899, gpa = 2.0 WHERE id = 6; 
SELECT * FROM student;


DELETE FROM student WHERE id = 5;


  INSERT INTO student 
	values 
		(7, "Bilal", 0123456789, 3.0),
        (8, "Zeeshan", 0246802468, 2.5),
        (9, "Habib", 246810121,4.0),
        (10, "Anas", 1357913579,3.5);
        

TRUNCATE TABLE student;
SELECT * FROM student;



/*LAB # 2*/
ALTER TABLE student CHANGE naame name varchar(50);
ALTER TABLE student ADD DOB date;
ALTER TABLE student ADD semester int(10);
ALTER TABLE student ADD department varchar(40);
ALTER TABLE student DROP gpa;
ALTER TABLE student ADD gpa float(3,2);
ALTER TABLE student DROP phone;

INSERT INTO student 
	values 
		(1, "Bilal", "2012-01-05", 4, "Telecom", 3.0),
        (2, "Majid", "2010-07-02", 7, "Computer Science", 2.75),
        (3, "Faris", "2011-11-14", 1, "Cyber Security", 4.0),
        (4, "Anas", "2010-05-29", 2, "AI", 3.5),
        (5, "Abdullah", "2014-09-01", 3, "Computer Science", 2.0),
        (6, "Rutba", "2008-08-20", 4, "Telecom", 3.75),
        (7, "Amna", "2016-10-25", 1, "Computer Science", 1.95);
        
SELECT * FROM student;

SELECT id, name, department FROM student;

SELECT DISTINCT department FROM student;

SELECT name AS 'Student Name', department AS 'Department', dob AS 'Date of Birth' FROM student;

SELECT * FROM student WHERE department = "Telecom";

SELECT name, semester, gpa FROM student WHERE department = "Computer Science";
        
SELECT name, semester, department From student Where department !="Computer Science";

SELECT name, semester, gpa, department FROM student WHERE gpa < 2.5 AND Semester >= 5;

SELECT name, semester From student Where department = "Telecom" OR Gpa > 3.5;

SELECT name, dob, department From student WHERE dob > "2000-12-31" OR Semester < 3;

SELECT name, gpa FROM student WHERE gpa >= 2.5 AND gpa <= 3.5;

SELECT * FROM student WHERE name LIKE '%a%';