use Training;
/*
Clustered index is created only when both the following conditions satisfy – 
The data or file, that you are moving into secondary memory should be in sequential or sorted order.
There should be a key value, meaning it can not have repeated values. 
Whenever you apply clustered indexing in a table, it will perform sorting in that table only. 
You can create only one clustered index in a table like primary key. 
Clustered index is as same as dictionary where the data is arranged by alphabetical order. 

*/
create table Student
( Roll_No int primary key, 
Name varchar(50), 
Gender varchar(30), 
Mob_No bigint );

insert into Student
values (4, 'ankita', 'female', 9876543210 );

insert into Student 
values (3, 'anita', 'female', 9675432890 );

insert into Student 
values (5, 'mahima', 'female', 8976453201 ); 
/*
 Roll no is a primary key, it will automatically act as a clustered index. 
*/
select * from Student;
/*
You can have only one clustered index in one table
but you can have one clustered index on multiple columns
and that type of index is called composite index. 

Non Clustered Index
Non-Clustered Index is similar to the index of a book. The index of a book consists of a chapter name 
and page number, if you want to read any topic or chapter then you can directly go to that 
page by using index of that book. No need to go through each and every page of a book. 
The data is stored in one place, and index is stored in another place. 
Since, the data and non-clustered index is stored separately, then you 
can have multiple non-clustered index in a table. 
In non-clustered index, index contains the pointer to data. 

*/

insert into Student 
values (6, 'afzal', 'male', 9876543210 );

insert into Student 
values (7, 'sudhir', 'male', 9675432890 );

insert into Student 
values (8, 'zoya', 'female', 8976453201 );
 
 select * from Student;

 create nonclustered index DEMO_N_C_Index
on Student (Name ASC); 
select * from Student;