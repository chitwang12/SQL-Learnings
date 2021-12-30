use training;
/*
SQL Server Functions are useful objects in SQL Server databases. 
A SQL Server function is a code snippet that can be executed on a SQL Server. 
Rules for Function naming...
A function must have a name and a function name can never start with a special character such as @, $, #, and so on.
Functions only work with select statements.
Functions can be used anywhere in SQL, like AVG, COUNT, SUM, MIN, DATE and so on with select statements.
Functions compile every time.
Functions must return a value or result.
Functions only work with input parameters.
Try and catch statements are not used in functions.

There are majorly 2 types of functions 
User Defined 
Inbuilt 

User Defined are further Classified into 2 types:
Table Valued function
Scalar Values function

We select a table data using a user-created function. 
A function is created using the Create function SQL command. 
The following query creates a new user-defined function.

*/
Go
Create function Fun_EmployeeInformation()      
returns table       
as      
return(select * from Employees  )  
Go
Create function AddTwoNumbers(@int1 as int,@int2 as int)
returns int
AS
Begin
Return(@int1+@int2);
end;


/*
Scalar Function Example

*/
Go
create function fun_JoinEmpColumnInfo  
(  
   @EmpContact nchar(15),  
   @EmpEmail nvarchar(50),  
   @EmpCity varchar(30)  
)  
returns nvarchar(100)  
as  
begin return(select @EmpContact+ ' ' +@EmpEmail + ' ' + @EmpCity)  
end

Go
CREATE FUNCTION Fun_Addition(@Num1 Decimal(7,2),  
                         @Num2 Decimal(7,2))  
RETURNS Decimal(7,2)  
Begin  
    DECLARE @Result Decimal(7,2)  
    SET @Result = @Num1 + @Num2  
    RETURN @Result  
end   
