#DML - only for knowledge sake not for interview

#insert query
insert into info(id,emp_name,age)
values(1,"sam",25),
(2,'john',30),
(3,'july',28),
(4,'reena',21),
(5,'juhi',30),
(6,'neel',29);

# update 
update info set emp_name='ramesh',age = 27
where id = 1 ;

delete from info where Id = 2;


truncate table info;






