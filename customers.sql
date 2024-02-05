create database custmers;

show databases;
use custmers;

create table custmers(
	custmersId int NOT NULL AUTO_INCREMENT,
    firstName varchar(255) NOT NULL,
    email varchar(255) NOT NULL UNIQUE,
    mobile int NOT NULL,
    primary key(custmersId)
);



create table orders (
	ordersId int not null,
    ordersnumber int not null,
    custmersId int,
    primary key (ordersId),
    foreign key (custmersId) references custmers(custmersId)
    );
    
    
    insert into custmers values (0,'smit','sg@gmail.com',992458415),
    (0,'chirag','cd@gmail.com',987456220),
    (0,'hiyan','hc@gmail.com',999995555),
    (0,'sneha','sc@gmail.com',977777778);

    insert into orders values (0,252598,2),
    (0,123560,2),
    (0,111561,1),
    (0,984500,3),
    (0,222200,4),
    (0,214555,2);
    
    
    use custmers;
    
    select * from custmers; 
    
    select * from orders; 
    
    select * from orders where custmersId = 2;
    
    select * from custmers where firstName = "sneha";
    
    select custmers.* from custmers 
    join orders on custmers.custmersId = orders.custmersId 
    where orders.ordersId = 1;
    
    select custmers.firstName from custmers 
    join orders on custmers.custmersId = orders.custmersId 
    where orders.ordersId = 1;
    
    select custmers.email,mobile from custmers 
    join orders on custmers.custmersId = orders.custmersId 
    where orders.ordersId = 1;
    
    select orders.*,custmers.firstName,custmers.email 
    from payment 
    join orders on payment.ordersId = orders.ordersId 
    join custmers on orders.custmersid = custmers.custmersId
    where payment.paymentId = 1;
    
    select orders.*,custmers.firstName
    from payment 
    join orders on payment.ordersId = orders.ordersId 
    join custmers on orders.custmersid = custmers.custmersId
    where payment.paymentId = 3;