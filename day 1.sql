                 -- AGENDA:

-- DDL - Data Definition Language (CREATE , ALTER , DROP, TRUNCATE)
-- DML - Data Manupulation language (INSERT , UPDATE, DELETE)
-- DCL - Data Control language ( GRANT and REVOKE )
-- TCL - Transaction control language ( COMMIT, ROLLBACK, SAVEPOINT)
-- DQL - Data query langue  ( SELECT )
                  
                  -- BASICS

--  What is database?
-- 	collections of schema (tables, views, functions, procedure)
--     
-- What is table?
-- 	Table is a object which contains data ( column-row format)
    
    
-- How to create a database?

-- 	Syntax:
-- 	CRAETE DATABASE database_name;
        
        
CREATE DATABASE learnings;

USE learnings;

--  DROP DATABASE learnings;

-- HOW TO CRAETE A TABLE?

   create table customer (
   custid int,
   custname varchar(100),
   gender char(1),
   age int,
   city varchar(20),
   data_of_birth  date
   );




-- DATA TYPE IN MYSQL
-- INT -> Integer to store all the numerical values(numbers)
-- CHAR --> Character (Fixed length of character )
-- VARCHAR --> Variable Character ( Not a fixed lenth of character)
-- DATE -> To store the date
-- decimal(20,2) -> To store the full number upto 20 digits and decimal with 2 digits (4259999.50)

SELECT * FROM customer ;


-- HOW TO LOAD THE DATA INTO THE TABLE?  - Can be done by using INSERT INTO query

INSERT INTO customer VALUES(1000,'srilatha','F',21,'Hyderabad',current_date());

SELECT * FROM customer;

INSERT INTO customer VALUES(1001,'latha','F',21,'Hyderabad','2001-04-15');

SELECT * FROM customer;

INSERT INTO customer VALUES(1002,'Ashwin','M',20,'Bangalore','2003-01-01'),
							(1003,'Tharani priya','F',30,'Pune','1993-02-26'),
							(1004,'Arun','M',25,'Mumbai','1998-12-12');
                            
SELECT * FROM customer;
