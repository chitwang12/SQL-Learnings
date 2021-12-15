use training;
/*
The SQL LIKE OPERATOR 
used in a where clause to search for a specified pattern in column
There are two wildcards often used in conjunction with the like operator:
The Percent sign(%) represents zero ,one,or multiple characters
the underscore sign (_) represents one,single character

Syntax
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;

LIKE Operator	Description
WHERE CustomerName LIKE 'a%'	Finds any values that start with "a"
WHERE CustomerName LIKE '%a'	Finds any values that end with "a"
WHERE CustomerName LIKE '%or%'	Finds any values that have "or" in any position
WHERE CustomerName LIKE '_r%'	Finds any values that have "r" in the second position
WHERE CustomerName LIKE 'a_%'	Finds any values that start with "a" and are at least 2 characters in length
WHERE CustomerName LIKE 'a__%'	Finds any values that start with "a" and are at least 3 characters in length
WHERE ContactName LIKE 'a%o'	Finds any values that start with "a" and ends with "o"
*/

SELECT * FROM EMPLOYEES
WHERE FIRSTNAME LIKE 'a%';

SELECT * FROM EMPLOYEES
WHERE FIRSTNAME LIKE '%a';

SELECT * FROM EMPLOYEES
WHERE FIRSTNAME LIKE '%or%';

SELECT * FROM EMPLOYEES
WHERE LASTNAME LIKE '_r%';

SELECT * FROM Employees
WHERE FIRSTNAME LIKE 'a%o';


/*IN OPERATOR

*/

SELECT * FROM EMPLOYEES
WHERE City IN ('Australia', 'Amsterdam', 'London');

/*
The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.
The BETWEEN operator is inclusive: begin and end values are included. 

Syntax
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
*/

SELECT * FROM EMPLOYEES
WHERE EMPLOYEEID BETWEEN 200000 AND 500000;

SELECT * FROM EMPLOYEES
WHERE EMPLOYEEID NOT BETWEEN 200000 AND 500000;

/*
The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country".
The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);

*/

SELECT COUNT(EmployeeID), City
FROM EMPLOYEES
GROUP BY CITY
ORDER BY COUNT(EMPLOYEEID) DESC;




