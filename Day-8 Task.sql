use training;
/*
The SQL MIN() and MAX() Functions
The Min() Function returns the smallest value of the selected column
the Max() Function returns the largest value of the selected Column

Syntax 
SELECT MIN(COLUMN_NAME)
FROM TABLE_NAME
WHERE CONDITION;

SELECT MAX(COLUMN_NAME)
FROM TABLE_NAME
WHERE CONDITION;
*/
SELECT MIN(EMPLOYEEID)
FROM EMPLOYEES

SELECT MAX(EMPLOYEEID)
FROM EMPLOYEES


/*
COUNT()
The Count() Function returns the number of rows that matches a specified criteria
Select Count(Column_NAME)
FROM TABLE_NAME
WHERE CONDITION;
AVG()
The AVG() Function returns the total sum of a numeric column
SELECT AVG()(COLUMN_NAME)
FROM TABLE_NAME
WHERE CONDITION;
SUM()
The Sum() Function returns the total of a numeric column
SELECT SUM(COLUMN_NAME)
FROM TABLE_NAME
WHERE CONDITION
*/
Select Count(employeeID)
FROM EMPLOYEES
WHERE FIRSTNAME ='JOHN';

Select AVG(Salary)
FROM EMPLOYEES


ALTER TABLE Employees
ADD Salary int;

INSERT INTO EMPLOYEES(Salary ) VALUES (20000);
INSERT INTO EMPLOYEES(Salary ) VALUES (30000);
INSERT INTO EMPLOYEES(Salary ) VALUES (40000);
INSERT INTO EMPLOYEES(Salary ) VALUES (50000);
INSERT INTO EMPLOYEES(Salary ) VALUES (60000);

Select Sum(Salary)
From Employees;

