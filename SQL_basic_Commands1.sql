/* ----------------------------------------------------------------------------------------------------------------
														SQL COMMANDS 
	--------------------------------------------------------------------------------------------------------------- */

/*
	DDL - DATA DEFINITION LANGUAGE --- CREATE, ALTER, TRUNCATE
    DML - DATA MANIPULATION LANGUAGE --- INSERT, UPDATE, DELETE
    DQL - DATA QUERY LANGUAGE ---- SELECT
    DCL - DATA CONTROL LANGUAGE
    TCL - TRANSCTION CONTROL LANGUAGE

    */
		#  CREATE is used to create a database or table in a selected database
			/* The following is syntax fo table creation in database

				CREATE TABLE table_name(
					col1_name datatype,
					col2_name datatype,
					.................
					coln_name datatype
					);
					*/
					
				CREATE DATABASE ddl;
				-- After abouve Query, refresh schemas and go to ddl database and right click and select 'Set as default schema'. So that any queries from now will be applicable to dml data base
				-- The below person_info table will be created in dml database
				CREATE TABLE person_info (
				person_name VARCHAR(20),
				age INT,
				gender VARCHAR(10)
			);
			# The alternative way to select particular database is USE command
			/* Syntax:
				USE <database_name>;
				
				*/
			USE ddl;
			# We can get list of all databases we can use SHOW command
			/* Syntax/Command:
				SHOW databases;
				*/
			SHOW databases;

		# Generic Syntax for MySQL INSERT (Type 1)
			/*  TYPE 1: 
				1. The following is to enter Multiple rows. values should be in sequence to col names
				INSERT INTO table_name VALUES (val1,val2,val3......valn),(val1,val2,val3......valn),(val1,val2,val3......valn)............(val1,val2,val3......valn); 
                
                TYPE 2:
                2. The following is an example for inserting data/row in non-sequence manner. The args after table_name should be in allign with order of Values.
                INSERT INTO table_name(col2,col1,col4,col3.....coln) VALUES (val2,val1,val4,val3,.......valn);
                
                
				
                */
                # EX: Let us enter data into person_info using TYPE 1.
                # Let us select database ddl using USE Query
                # We can use TRUNCATE to delete data in table. EX: TRUNCATE TABLE person_info; (It will delete person_info table entries) 
                # We can use SELECT * FROM table_name; to get all entries in that table. (SELECT is DQL command)
				
                
					USE ddl;
                    TRUNCATE TABLE person_info;
                                
					INSERT INTO person_info VALUES 
					('RAM',24,'Male'),
					('seeta',22,'Female');
					
					SELECT * FROM person_info;
                    SELECT person_name FROM person_info; -- It will give all names in a table
                    SELECT person_name,age FROM person_info; -- It will give all name and age  entries from a table
					
		# DELETE Command/Query Examples and Syntax:
                /* We can delete any entry with condition as: "" DELETE FROM table_name WHERE gender = 'Male'; ""
					The above command will delete all entries which are having gender as 'Male'
                    
                    We can also use: DELETE FROM table_name;
                    The above command will dlete all entries from mentioned table
                    
                    */
                    DELETE FROM person_info WHERE gender = 'Female';
                    DELETE FROM person_info;
                    /* The above commands will throw error if we wont SET SQL_SAFE_UPDATES to 0 */
                    
                    
                    /* In order to update/delete data/entry from a table we have to SET a SQL_SAFE_UPDATES to 0 as below */
                    
                    SET SQL_SAFE_UPDATES = 0;
                    
                    /* SET SQL_SAFE_UPDATES = 1; to enable safe mode again. (It blocks delete/update tables)
                    
                    /* Now we can update/delete Table entries */
                    DELETE FROM person_info WHERE gender = 'Female';
                    DELETE FROM person_info;
                    
                    /* Now let us INSERT a table using TYPE 2 */
                    
                    INSERT INTO person_info (age,person_name,gender) 
                    VALUES
                    (20,'NAME1','Male'),
                    (22,'NAME2','Male'),
                    (25,'NAME3','Female');
         
         # UPDATE Syntax/Examples:
				/* We can UPDATE any entry in the table as below:
                
                TYPE 1:
                UPDATE table_name
                SET col_name = 'Your updated value'
                CONDITION;
                
                */
                
                # Let us INSERT a data as:
                INSERT INTO person_info VALUES 
					('RAM',24,'Male'),
					('seeta',22,'FeMaLe');
				SELECT * FROM person_info;
                    
			 # In above we have gender as 'FeMaLe'. Let us update it as 'Female'
             
				UPDATE person_info 
				SET 
					gender = 'Female'
				WHERE
					gender = 'FeMaLe';
				
                SELECT * FROM person_info;
                
	# ALTER is command/Query to ADD or DROP or MODIFY a column in existing table.
		/* TYPE 1 (ADD):
			ALTER TABLE table_name 
            ADD new_col_name <TYPE>;
            */
            
            ALTER TABLE person_info
            ADD email VARCHAR(64);    -- It will add a new col in person_info table
            
             INSERT INTO person_info VALUES 
					('RAM1',24,'Male',"Ram@gmail.com"),
					('seeta1',22,'FeMaLe', 'Seeta@gmail.com');
            
            /* After adding new col, the value for existing entries will be NULL.
            1. Now if we use TYPE1 INSERT, we must give all colums values.Otherwise it will throw error as Error Code: 1136. Column count doesn't match value count at row 1
			2. If we use TYPE 2 INSERT, the missed values will be filled with NULL
            
            */
            SELECT * FROM person_info;
            /* Now let us update email as dummy@gmail.com where email is NULL */
            
            UPDATE person_info
            SET email = "dummy@gmail.com"
            WHERE email IS NULL;
            
            SELECT * FROM person_info;
            
		/* TYPE 2: (DROP)
			ALTER TABLE table_name
            DROP COLUMN col_name;
            
            */
            # Let us drop a email col from the list
             ALTER TABLE person_info
             DROP COLUMN email;  -- This Command will DROP email col from table
             
			# or
            
            ALTER TABLE person_info
             DROP email;  -- This Command will DROP email col from table
            
		  /* TYPE 3(MODIFY):
			ALTER TABLE table_name
			MODIFY COLUMN  col_name <type>;
			
			# The ALTER MODIFY will modify the specified column properties like type,size etc...
				   
			*/
			
			# Let us Modify the size of person_name to 32 (existing is 20)
			# Before that let us check existing properties of columns in a table using DESCRIBE command
			# DESCRIBE is a command to get details like column names and their properties for specified table
				/* Syntax:
					DESCRIBE table_name;
					*/
			DESCRIBE person_info; 
			
			# Now change person_name size to 32
			ALTER TABLE person_info
			MODIFY person_name VARCHAR(32);
        
		/* Let us change/ALTER col_name in a  table. Let change age to employee_age */
        
        /* Syntax:
			ALTER TABLE person_info
            RENAME COLUMN old_name
            To new_name;
            */
            ALTER TABLE person_info
            RENAME COLUMN age
            TO employee_age;
            
            /* we can also change multiple columns at a time 
			ALTER TABLE person_info
            RENAME COLUMN old_name1 To new_name1,
            RENAME COLUMN old_name2 To new_name2,
            RENAME COLUMN old_name3 To new_name3;
            */
			ALTER TABLE person_info
            RENAME COLUMN person_name TO employee_name,
            RENAME COLUMN gender to employee_gender;
            
            /* check our table */
            SELECT * FROM person_info;
            
        /* We can also change table name with ALTER command *
        /* Synatx 1:
			ALTER TABLE table_name
            RENAME TABLE old_table_name
            TO new_table_name;
            
            Synatx 2:
            RENAME TABLE old_table_name TO new_table_name;
            
            */
            /* Let us change person_info to emp_info */
            
            RENAME TABLE person_info TO emp_info;
            
            SELECT * FROM person_info; -- Now it will throw error as we dont have person_info table anymore
            SELECT * FROM emp_info;
		
            