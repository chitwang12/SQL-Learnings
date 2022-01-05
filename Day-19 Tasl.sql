use Training;
/*
In SQL Server, you can use local and global temporary tables.
Local temporary tables are visible only in the current session, while global temporary
tables are visible to all sessions.
Unlike Oracle, SQL Server does not store the definition of temporary tables 
permanently in the database catalog views, and this can cause various scope and 
visibility issues when you use temporary tables.


Local Temporary Tables
A local temporary table is created using CREATE TABLE statement with the table name prefixed with single number 
sign (#table_name).In SQL Server, local temporary tables are visible only in the current session. 
So if you create a local temporary table in one session, you cannot access it in other sessions.


Scope of Temporary Table
If a local temporary table created in a stored procedure, it is dropped automatically
when the stored procedure is finished.
This means that this local temporary table can be referenced 
only by nested stored procedures.
The local temporary table cannot be referenced by the stored procedure or application 
that called the stored procedure that created the local temporary table.
*/
Go
Create Procedure sp_create_tempt
AS
Create Table #temp1
(c1 INT);

/**Go
Create Procedure sp_use_tempt
AS
Begin
Exec sp_create_tempt
Select * From ##tempt1
End
*/


/*
Global Temporary Table
A global temporary table is created using CREATE TABLE statement with the 
table name prefixed with a double number sign (##table_name).
In SQL Server, global temporary tables are visible to all sessions (connections). 
So if you create a global temporary table in one session, you can start using it in other sessions.

*/
 CREATE TABLE ##tempera1 
    (c1 INT);
  INSERT INTO ##tempera1 
    VALUES (1);

	Select* from ##tempera1

	/*
	Global temporary table is automatically dropped when the session that 
	created the table ends and the last active Transact-SQL statement (not session) 
	referencing this table in other sessions ends.


	Session 1 : Terminated 
	Session 2 : (anotherConnection)



	Also We cannot access local and global tables in Functions
	*/