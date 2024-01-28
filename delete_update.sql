--to delete record in table
delete from student_info where Id=1;
delete from student_info where firstName='smit';


delete from student_info where (email='smit@gmail.com' or username='sg123') and password='125655';

--update record
update student_info set firstName='smit patel' where Id=2;
update student_info set firstName='smit patel', email='smit@gmail.com' where Id=2;