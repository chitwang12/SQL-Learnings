USE Training;
CREATE TABLE EMPLOYEES(EMPLOYEEID int,LASTNAME varchar(255),FIRSTNAME varchar(255),ADDRESS varchar(255),CITY Varchar(255));
INSERT INTO EMPLOYEES(EMPLOYEEID , LASTNAME , FIRSTNAME , ADDRESS , CITY) VALUES (124,'goseph','Andrew','24 walstreet road','Paris');
UPDATE EMPLOYEES 
SET FIRSTNAME = 'Alzari',CITY = 'Frankfurt' 
Where EMPLOYEEID = 124;
/*
This command will be used to update the existing records present in the table.
*/
SELECT * FROM EMPLOYEES;
/*
This is used to print the command on the output screen having all the data.
*/
DELETE FROM EMPLOYEES;
/*
Deleting the data present in the table.
*/
SELECT * FROM EMPLOYEES;

CREATE TABLE Students(STDId int,Lastname varchar(255),Firstname varchar(255),houseaddress varchar(255),city Varchar(255));
INSERT INTO Students(STDId , Lastname , FirstName , houseaddress , city) VALUES (123,'Doseph','Pandrew','223 walstreet road','Amsterdam');
UPDATE Students 
SET Lastname = 'James',CITY = 'Atlanta' 
Where STDId = 123;
/*
This command will be used to update the existing records present in the table.
*/
SELECT STDId,city,houseAddress FROM Students;
/*
This is used to print the Data  on the output screen having all the details.
*/
DELETE FROM STUDENTS WHERE Lastname = 'Jamess';
/*
Deleting the data present in the table.
*/
SELECT STDId,city,houseAddress,Lastname FROM Students;

