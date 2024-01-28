--To get all data from table
select * from student_info; 

--to get specific colum but all rows(all data).
select email,mobile from student_info;  

--to select one row data but all colums.
select * from student_info where firstName='smit'; 

--to select specific colums from specific one row.
select email,mobile from student_info where firstName='smit'; 

--to select one row with multipul condition
select * from student_info where firstName='smit' and email='sg@gmail.com';
select * from student_info where firstName='smit' or email='sg1@gmail.com';

--to select one row with comparing number
select * from student_info where age>25;



--Insert record by column name
insert into student_info (mobile,email,firstName) values (985695656,'sc@gmail.com','sneha');

--insert record by table column name 
insert into student_info values (0,'smit','sg@gmail.com',992458415);

--insert multipul record one time
insert into student_info values 
(0,'isha','isha@gmail.com',99856456),
(0,'jemish','jemish@gmail.com',92659545),
(0,'akta','akta@gmail.com',91656985);