use training;
/*
Views in SQL are kind of virtual tables.
A view also has rows and columns as they are in a real table in the database.
We can create a view by selecting fields from one or more tables present in the database. 
A View can either have all the rows of a table or specific rows based on certain condition.
*/

CREATE TABLE STUDENT_DETAILS(S_ID int,Name Varchar(255),Address VArchar(255));
Create Table STUDENT_MARKS(ID int,Name VARCHAR(255),MARKS int,AGE int);


/*
CREATE VIEW view_name AS
SELECT column1, column2.....
FROM table_name
WHERE condition;

view_name: Name for the View
table_name: Name of the table
condition: Condition to select rows
*/
Go
CREATE VIEW DetailViewAS
Select Name,Address
From STUDENT_DETAILS
WHERE S_ID < 5;

/*
To Print a view we do it like same we used to do in table
*/
Select * from DetailsView;
Go
Create View StudentName AS
Select S_ID,Name 
From STUDENT_DETAILS;
Select * from StudentName;


/*
Creating View from Multiple Table :

*/
Go
Create View MarksView AS
Select STUDENT_DETAILS.Name,STUDENT_DETAILS.Address,STUDENT_MARKS.Marks
From STUDENT_DETAILS,STUDENT_MARKS
Where STUDENT_DETAILS.Name = STUDENT_MARKS.Name;

Select * from MarksView;