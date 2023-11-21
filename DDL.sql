-- The CREATE DATABASE statement is used to create a new SQL database.
-- SYNTAX
-- CREATE DATABASE databasename;

CREATE DATABASE Excelr;
use Excelr;

-- The CREATE TABLE statement is used to create a new table in a database.
-- Syntax
--      CREATE TABLE table_name (
--     column1 datatype,
--     column2 datatype,
--     column3 datatype,....
--      );

CREATE TABLE Info(

id int,
name char(25),
age int);
#ALTER
		-- The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.

		-- The ALTER TABLE statement is also used to add and drop various constraints on an existing table.
        
		# ALTER TABLE - ADD Column
	    --  ALTER TABLE table_name
		--           ADD column_name datatype;
        
		# ALTER TABLE - DROP COLUMN
		-- ALTER TABLE table_name
		--       DROP COLUMN column_name;



alter table info
     add Salary float;
alter table info 
drop Salary;

alter table info
add genderchar int;

#DROP
      -- The DROP TABLE statement is used to drop an existing table in a database.
	  -- Note: Be careful before dropping a table. Deleting a table will result in loss of complete information stored in the table!
-- Syntax
      -- DROP TABLE table_name;

drop table info;


#TRUNCATE
		-- TRUNCATE is used to remove all records from a table, including all spaces allocated for the records are removed.
-- Syntax
        -- 	TRUNCATE TABLE table(name);

truncate table age;
ALTER TABLE Test1 RENAME COLUMN foo TO baz;
alter table info Rename column age to bag; 

