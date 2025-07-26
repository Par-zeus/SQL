DROP DATABASE if EXISTS school;
CREATE DATABASE IF NOT EXISTS school;
SHOW DATABASES;
USE school;

/*
Primary Key:- A unique identifier for each record in the table.
Foreign Key:- A field in a table which refers to the primary key of another table.
It establishes relationships b/w tables.
*/ 

-- Unique contraint
CREATE TABLE stud1(
ID INT auto_increment,
primary key(ID),
sname VARCHAR(20) 
); 

INSERT INTO stud1(sname)
VALUES 
('Maria'),
('Hades');

-- Not null constraint and check contraint
 CREATE TABLE stud2(
 age int CHECK(age>=18),
 rollNo INT NOT NULL
 );
 
 INSERT INTO stud2(age,rollNO)
 VALUES(24,2);
 SELECT *FROM stud3;

  CREATE TABLE stud3(
  id int auto_increment,
 age int ,
 sname varchar(20) DEFAULT 'ABC',
 primary key(id)
 );
 
 INSERT INTO stud3(age)
 VALUES(50),(40),(90);
 
 CREATE TABLE stud4(
sID INT auto_increment primary key,
stud1ID INT,
foreign key(stud1ID) references stud1(ID)
); 

INSERT INTO stud4 (stud1ID) VALUES (1), (2), (3);

 
 
 
 