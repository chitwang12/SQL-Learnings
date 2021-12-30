Use training;
/*
Views in SQL are kind of virtual tables.
A view also has rows and columns as they are in a real table in the database. 
We can create a view by selecting fields from one or more tables present in the database. 
A View can either have all the rows of a table or specific rows based on certain condition.


CREATE VIEW view_name AS
SELECT column1, column2.....
FROM table_name
WHERE condition;

view_name: Name for the View
table_name: Name of the table
condition: Condition to select rows




*/
Go
CREATE VIEW [Brazil Customers] AS
SELECT CustomerName, ContactName
FROM Customers
WHERE Country = 'Brazil';

SELECT * FROM [Brazil Customers];
