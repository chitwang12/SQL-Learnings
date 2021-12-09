use Training;
select * from employees;
Insert into EMPLOYEES(FIRSTNAME,LASTNAME,Address,CITY ) VALUES ('JOHN','Philip','church Street','London');
Insert into EMPLOYEES(FIRSTNAME,LASTNAME,Address,CITY ) VALUES ('JAMES','Gosling','Purch Street','Amsterdam'); 

Select distinct FIRSTNAME,LASTNAME,CITY from EMPLOYEES;

/*
  where clause Specifically used for reasoning..
*/
Insert into EMPLOYEES(EMPLOYEEID,FIRSTNAME,LASTNAME,Address,CITY ) VALUES (123,'PHILIP','Huges','church Street','London');
Insert into EMPLOYEES(EMPLOYEEID,FIRSTNAME,LASTNAME,Address,CITY ) VALUES (1233,'Mitchel','Johnson','Purch Street','Australia');
select * from employees where EMPLOYEEID = 1233 ;

/*
AND OR NOT CLAUSE
*/
Select * from EMPLOYEES where EMPLOYEEID = 123 AND FIRSTNAME = 'PHILIP';
select * from EMployees where EMPLOYEEID = 1233 OR City = 'Australia';
SELECT * from EMPLOYEES  where NOT EMPLOYEEID =1123;

