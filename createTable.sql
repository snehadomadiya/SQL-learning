create table student_info(
	Id int NOT NULL AUTO_INCREMENT,
    firstName varchar(255) NOT NULL,
    email varchar(255) NOT NULL UNIQUE,
    mobile int NOT NULL,
    primary key(Id)
);

