use training;
/*
 A trigger is a stored procedure in database which automatically
 invokes whenever a special event in the database occurs. For example,
 a trigger can be invoked when a row is inserted into a specified table or 
 when certain table columns are being updated.
 
 Syntax -: 
 create trigger [trigger_name] 
[before | after]  
{insert | update | delete}  
on [table_name]  
[for each row]  
[trigger_body] 


create trigger [trigger_name]: Creates or replaces an existing trigger with the trigger_name.
[before | after]: This specifies when the trigger will be executed.
{insert | update | delete}: This specifies the DML operation.
on [table_name]: This specifies the name of the table associated with the trigger.
[for each row]: This specifies a row-level trigger, i.e., the trigger will be executed for 
each row being affected.
[trigger_body]: This provides the operation to be performed as trigger is fired

*/
Create Table Kid(tID int,name varchar(50),subj1 varchar(50),subj2 varchar(50),subj3 varchar(50),total int,per int);
create trigger stud_marks 
before INSERT 
On
Kid 
for each Row
set Kid.total = Kid.subj1 + Kid.subj2 + Kid.subj3, Kid.per = Kid.total * 60 / 100;