use training;
/*
The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.
Syntax 
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);

*/
SELECT COUNT(EmployeeID), City
FROM EMPLOYEES
GROUP BY CITY
HAVING COUNT(EMPLOYEEID) > 5;


/*SELECT EmployeeID, FirstNAME,  ADDRESS, LASTNAME
FROM EMPLOYEES
GROUP BY EMPLOYEEID
HAVING COUNT(EmployeeID) >= 1234;
*/


/*
The EXISTS operator is used to test for the existence of any record in a subquery.
The EXISTS operator returns TRUE if the subquery returns one or more records.
Syntax 
SELECT column_name(s)
FROM table_name
WHERE EXISTS
(SELECT column_name FROM table_name WHERE condition);


*/

CREATE TABLE Products (
    ProductID int,
    ProductName varchar(255),
    SupplierID int,
    CategoryID int,
	Unit varchar(255),
    Price int
);

Insert Into Products(ProductID,ProductName,SupplierID,CategoryID,Unit,Price) Values(1,'Chais',1,1,'10 boxes x 20 bags',18);
Insert Into Products(ProductID,ProductName,SupplierID,CategoryID,Unit,Price) Values(2,'Chang',2,2,'24-12 oz bottles',19);
Insert Into Products(ProductID,ProductName,SupplierID,CategoryID,Unit,Price) Values(3,'Chais',3,3,'12 - 550 ml bottles',10);
Insert Into Products(ProductID,ProductName,SupplierID,CategoryID,Unit,Price) Values(4,'Chef Antons Cajun Seasoning',4,4,'48 - 6 oz jars',22);


CREATE TABLE Suppliers (
    SupplierID int,
    SupplierName varchar(255),
    ContactName varchar(255),
    Address varchar(255),
	City varchar(255),
    PostalCode varchar(255),
	Country varchar(255)
);

Insert Into Suppliers(SupplierID,SupplierName,ContactName,Address,City,PostalCode,Country) Values(1,'Exotic Liquid','Charlotte Copper','49 Gilbert st.','London','EC1 4SD','UK');
Insert Into Suppliers(SupplierID,SupplierName,ContactName,Address,City,PostalCode,Country) Values(2,'New Orleans Cajun Delights','Shelley Burke','P.O. Box 78934','	New Orleans','	70117','USA');
Insert Into Suppliers(SupplierID,SupplierName,ContactName,Address,City,PostalCode,Country) Values(3,'Grandma Kellys Homestead','Regina Murphy','707 Oxford Rd.','Ann Arbor','48104','USA');
Insert Into Suppliers(SupplierID,SupplierName,ContactName,Address,City,PostalCode,Country) Values(4,'Tokyo  Traders','Yoshi Nagase','9-8Sekimai ','Tokyo','100','Japan');


SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID AND Price < 20);

SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID AND Price = 22);
