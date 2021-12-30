use training;
/*
The PRIMARY KEY constraint uniquely identifies each record in a table.
Primary keys must contain UNIQUE values, and cannot contain NULL values.
A table can have only ONE primary key; and in the table, this primary key can consist of single or multiple columns (fields).
*/
CREATE TABLE Peoples (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);

/*
PRIMARY KEY on ALTER TABLE
To create a PRIMARY KEY constraint on the "ID" column when the table is already created
*/
ALTER TABLE Persons
ADD PRIMARY KEY (ID);

/*
DROP a PRIMARY KEY Constraint
To drop a PRIMARY KEY constraint
*/
ALTER TABLE Persons
DROP PRIMARY KEY;


/*
Foreign Key
A FOREIGN KEY is a field (or collection of fields) in one table, 
that refers to the PRIMARY KEY in another table.
The table with the foreign key is called the child table, 
and the table with the primary key is called the referenced or parent table.

*/
CREATE TABLE Ardors (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
    REFERENCES Peoples(Id)
);

/*
A unique key is a set of one or more than one fields/columns of a table that uniquely 
identify a record in a database table.You can say that it is little like primary key but it
can accept only one null value and it cannot have duplicate values.The unique key and
primary key both provide a guarantee for uniqueness for a column or a set of columns.There
is an automatically defined unique key constraint within a primary key constraint.There 
may be many unique key constraints for one table but only one PRIMARY KEY constraint for one table.

*/
CREATE TABLE Suppers
(  
S_Id int NOT NULL,  
LastName varchar (255) NOT NULL,  
FirstName varchar (255),  
City varchar (255),  
CONSTRAINT uc_studentId UNIQUE (S_Id, LastName)  
)  



