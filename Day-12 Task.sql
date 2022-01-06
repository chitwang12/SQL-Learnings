Use Training;
/*
The CHECK constraint is used to limit the value range that can be placed in a column.
If you define a CHECK constraint on a column it will allow only certain values for this column.
If you define a CHECK constraint on a table it can limit the values in certain columns based on values in other columns in the row.
*/
CREATE TABLE People (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int CHECK (Age>=18)
);

/*
To create a check constraint on the "AGE" Column When the table is already created ,use the following sql:
*/
ALTER TABLE People
ADD CHECK (Age>=21);

/*
The DEFAULT constraint is used to set a default value for a column.
The default value will be added to all new records, if no other value is specified.
*/

CREATE TABLE Humans (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Banglore'
);
Insert into Humans Values (1,'Gandhi','Chitwan',23,default);
select * from humans;
select City from Humans;


CREATE TABLE JUDGES (
    ID int NOT NULL,
    OrderNumber int NOT NULL,
    OrderDate date DEFAULT GETDATE()
);
select * from Judges;


/*
Not null Unique
By default, a column can hold NULL values. If you do not want a column to have a NULL value, use the NOT NULL constraint.

It restricts a column from having a NULL value.
We use ALTER statement and MODIFY statement to specify this constraint.
Unique
It ensures that a column will only have unique values. A UNIQUE constraint field cannot have any duplicate data.

It prevents two records from having identical values in a column
We use ALTER statement and MODIFY statement to specify this constraint.
*/
Create Table Animals(
ID INT Primary key identity,
Name Varchar(50) NOT NULL ,
Species varchar(50) NOT NULL,
CONTACTEmail Varchar(50) NOT NULL UNIQUE
);



/*
The CREATE INDEX statement is used to create indexes in tables.
Indexes are used to retrieve data from the database more quickly than otherwise.
The users cannot see the indexes, they are just used to speed up searches/queries.
Syntax 

Creates an index on a table. Duplicate values are allowed:
CREATE INDEX index_name
ON table_name (column1, column2, ...);

Creates a unique index on a table. Duplicate values are not allowed:
Syntax
CREATE UNIQUE INDEX index_name
ON table_name (column1, column2, ...);

*/
	
CREATE INDEX idx_lastname
ON Humans (LastName);

/*
With multiple columns index can be created 
*/
CREATE INDEX idx_pname
ON Persons (LastName, FirstName);

/*
 The DROP INDEX statement is used to delete an index in a table.
*/
 DROP INDEX Persons.idx_pname;
