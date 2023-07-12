# Course-SQL

Course of SQL following video of Jonathan of channel youtube Dev Aprender

https://www.youtube.com/watch?v=G7bMwefn8RQ&t=7764s

Starting the day course 05/07/2023

10/07/2023 Until class 24
New learning of commands SQL as:

SELECT TOP - select the firsts register

WHERE - Filter query

GROUP BY - Groups register of columns

ORDER BY (ASC, DESC) - Orders sort by numer or alphabet
ASC - Order by growing
DESC - Order by descending

HAVING - Filter after GROUP BY 

AS - Rename colum

INNER JOIN - Relates key as Id's

FULL OUTER JOIN - Return a  set of all record being equal and the records that are null he return as null

LEFT OUTER JOIN - Return a set of all records of TableA, and records correspondents the TableB. If not to have records correspondents the go completed with "null" 

UNION - Matches two or more results of a select in a result

Banco de dados (Self Join) a partir da aula 24: http://b.link/BancoDeDadosAual24

11/07/2023
SELF JOIN - Relates information equal the INNER JOIN, but information of own table

SUBQUERY (SUBSELECT) - Is a SELECT inside other SELECT or in a filter WHERE, ever executed first inside parentheses


DATEPART(xx,Colum) - Manipulation of type date for others types as: Year, month, week, day, etc.

STRING MANIPULATION - 

 CONCAT (Concatenates strings)

 UPPER(manipulate the string to upper case)

 LOWER(manipulate the string to lower case)

 LEN(Does character count)

 SUBSTRING(A start and end parameter must be passed after declaring the column and it will count from the first to the second declared number)
 REPLACE(The replace is used to change some character or the whole string, collecting 3 parameters starting with the column, 'Character or string that will be replaced', 'Value that will replace' )

 12/07/2023
 
 PRIMARY AND FOREIGN KEY:
 - A primary key is basically a column or group of voices, used to uniquely identify a row in a table
 - You can create these keys through restrictions (or constraints in English), which are rules that you define when you are creating a column
 - So when you do this you are creating a unique index for that column or group of columns

 CREATE TABLE - QueryParte4.Line 1

 INSERT INTO - Insert of new record

 UPDATE - Update record

 DELETE - Delete record

 ALTER TABLE - QueryParte4.Line 51

 DROP TABLE - Delete a table of data base

 CHECK CONSTRAINT - QueryParte4.Line 70

 NOT NULL CONSTRAINT - Forces the constraint that it is not possible to insert data into a table without filling the column marked as NOT NULL