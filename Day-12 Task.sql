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
Insert into Humans Values (1,'Gandhi','Chitwan',23);
select * from humans;
select City from Humans;


CREATE TABLE JUDGES (
    ID int NOT NULL,
    OrderNumber int NOT NULL,
    OrderDate date DEFAULT GETDATE()
);
select * from Judges;

Create Table Animals(
ID INT Primary key identity,
Name Varchar(50) NOT NULL ,
Species varchar(50) NOT NULL,
CONTACTEmail Varchar(50) NOT NULL UNIQUE
);


