/*
SYNTAX 
Grant Privilages ON OBJECT TO user;
OBJECT :The name of the database object that you are granting permissions for .In the case of granting priveleges on a table ,
this would be the table name. 

USER:The name of the user that will be granted these priveleges.


*/
Use Training;
Grant SELECT,INSERT,UPDATE,DELETE ON EMPLOYEES TO PUBLIC;
/*
REVOKE Priveleges on object from user;
object and user are the same as in the case of grant mentioned above
*/
REVOKE ALL ON EMPLOYEES FROM PUBLIC;


/*
TCL statements -: 
Commit : to save the changes.
Rollback : to roll back the changes. 
Savepoint : creates a point within the group of transaction in which to ROllBACK.
SET TRANSACTION : Place a name on a transaction.

*/
Begin Tran
Insert into EMPLOYEES(FIRSTNAME,LASTNAME,Address,CITY ) VALUES ('JOHN','Philip','church Street','London');
Insert into EMPLOYEES(FIRSTNAME,LASTNAME,Address,CITY ) VALUES ('JAMES','Gosling','Purch Street','Amsterdam');
COMMIT Tran;
select * from EMPLOYEES;
Begin Tran;
DELETE FROM EMPLOYEES WHERE CITY ='AMSTERDAM';
ROLLBACK Tran;
select * from EMPLOYEES; 
