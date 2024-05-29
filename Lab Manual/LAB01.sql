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