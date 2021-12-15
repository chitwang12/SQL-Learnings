use Training;
/*
The SQL UPDATE STATEMENT 
The update statement is used to modify the existing records in a table
*/
UPDATE EMPLOYEES
set FIRSTNAME = 'Satyendra',LASTNAME ='Yadav'
Where EMPLOYEEID = 1267;
select * from EMPLOYEES;
UPDATE EMPLOYEES
set FIRSTNAME = 'Raju',LASTNAME ='Gurjar'
Where EMPLOYEEID = 1267;
 /*
 The SQL Delete Statement
 The delete statement is used to delete existing records in a table
 Syntax 
 DELETE FROM TABLE_NAME WHERE Condition;
  
 */
 DELETE FROM EMPLOYEES WHERE CITY ='AUSTRALIA';
 select * from EMPLOYEES;

 /*
 DELETE FROM TABLE_NAME
 Will delete All records from table.
 */

 /*
 **********************************************************************
The SQL SELECT TOP CLAUSE 
TOP CLAUSE IS USED TO SPECIFY THE NUMBER OF RECORDS TO RETURN 
THE SELECT TOP CLAUSE IS USEFUL ON LARGE TABLES WITH THOUSANDS OF RETURNS .Returning a large number of records can impact performance
 SQL SYNTAX 
 Select TOP Number|PERCENT COLUMN NAME
 FROM TABLE NAME 
 WHERE CONDITION;
 
 */
 
 SELECT TOP 3 * FROM EMPLOYEES; 
 /* select the enteries using order by statement
 */
 SELECT TOP 10 * 
 FROM EMPLOYEES 
 ORDER BY EMPLOYEEID DESC;
 /*
 select statement with where clause.
 */
 SELECT TOP 3* 
 FROM EMPLOYEES 
 WHERE CITY ='London';