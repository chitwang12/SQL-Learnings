use training;
CREATE TABLE Employeess (
    EmpID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255),
	Salary int
);
Go
select FirstName,LastName 
from 
Employees
Where Salary > 10000; 
