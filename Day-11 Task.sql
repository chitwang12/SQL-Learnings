use training;
/*
SQL JOIN 
A Join clause is used to combine rows from two or more tables,based on a related column bw them .

*/
Create Table Orders(OrderID int,CustomerID int ,OrderDate Date);
Insert Into Orders(OrderID,CustomerID,OrderDate) Values(10308,2,'1996-09-18');
Insert Into Orders(OrderID,CustomerID,OrderDate) Values(10309,37,'1996-09-19');
Insert Into Orders(OrderID,CustomerID,OrderDate) Values(10310,77,'1996-09-20');
Create table Customers(CustomerID int ,CustomerName varchar(255),ContactName varchar (255) ,Country varchar(255));
Insert Into Customers(CustomerID,CustomerName,ContactName,Country)Values(1,'alfredfutterkisse','Maria Anders','Germany');
Insert Into Customers(CustomerID,CustomerName,ContactName,Country)Values(2,'Anna Marrie','Ana Turjillo','Mexico');
Insert Into Customers(CustomerID,CustomerName,ContactName,Country)Values(3,'Antonio Moreno','Antonio Moreno','Mexico');

SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

/*
Different types of joins 
(INNER) JOIN: Returns records that have matching values in both tables
LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table

The inner join	keyword selects records that have matching values in both tables

*/
Create table Orderss(OrderID int,CustomerID int,EmployeeID int,OrderDate Date,ShipperId int);
Create table Customerss(CustomerID int,CustomerName varchar(255),ContactName varchar(255),Address varchar(255),City varchar(255),PostalCode varchar(255),Country varchar(255));


SELECT Orders.OrderID, Customers.CustomerName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

/*
Join three Tables given as below..

SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM ((Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);
*/


/*
Inner Join 
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;

*/
SELECT Orderss.OrderID, Customerss.CustomerName
FROM Orderss
INNER JOIN Customerss ON Orderss.CustomerID = Customerss.CustomerID;

/*
The LEFT JOIN keyword returns all records from the left table (table1),
and the matching records from the right table (table2). 
The result is 0 records from the right side, if there is no match.

*/

SELECT Customerss.CustomerName, Orderss.OrderID
FROM Customerss
LEFT JOIN Orderss ON Customerss.CustomerID = Orderss.CustomerID
ORDER BY Customerss.CustomerName;

/*
The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) or right (table2) table 
records.
SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;
*/

SELECT Customerss.CustomerName, Orderss.OrderID
FROM Customerss
FULL OUTER JOIN Orders ON Customerss.CustomerID=Orderss.CustomerID
ORDER BY Customerss.CustomerName;

/*
A self join is a regular join, but the table is joined with itself.
SELECT column_name(s)
FROM table1 T1, table1 T2
WHERE condition;
*/
SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM Customerss A, Customerss B
WHERE A.CustomerID <> B.CustomerID
ORDER BY A.CustomerID;
