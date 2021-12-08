create database Training;
Use Training;
CREATE TABLE Persons(PersonID int,LastName varchar(255),FirstName varchar(255),Address varchar(255),City varchar(255));
/*
	Here Create table will create a table named as persons in the database named as Persons
*/
ALTER TABLE Persons ADD Email varchar(255);
ALTER TABLE Persons ADD PhoneNumber varchar(255);
ALTER TABLE Persons ADD DateOfBirth date;
ALTER TABLE Persons ALTER COLUMN  DateOfBirth DATETIME;
ALTER TABLE Persons DROP COLUMN DateOfBirth;
/*
	Here ALTER TABLE Will alter or make changes in the follwoing table.
*/
TRUNCATE TABLE Persons;
/*
Table is truncated...
*/
DROP TABLE Persons;
/*
Table named as students is being dropped here now.
*/