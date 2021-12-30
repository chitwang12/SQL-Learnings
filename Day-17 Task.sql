use training;
/*
A stored procedure is a prepared SQL code that you can save,
so the code can be reused over and over again.So if you have an SQL query that you
write over and over again, save it as a stored procedure, and then just call it to execute it.
You can also pass parameters to a stored procedure, 
so that the stored procedure can act based on the parameter value(s) that is passed.
Syntax

CREATE PROCEDURE procedure_name
AS
sql_statement
GO;

Execute a Procedure
EXEC procedure_name;
*/

Go
CREATE PROCEDURE SelectAllCustomers
AS
SELECT * FROM Customers
GO;

EXEC SelectAllCustomers;

/*
Stored Procedure With multiple Parameter
*/
Go 
CREATE PROCEDURE SelectAllClients @City nvarchar(30), @PostalCode nvarchar(10)
AS
SELECT * FROM Customers WHERE Country = @City ;
EXEC SelectAllClients @City = 'London', @PostalCode = 'WA1 1DP';

