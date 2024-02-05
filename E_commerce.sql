create database E_commerce;

show databases;

use e_commerce;

create table customers(
	customersId int NOT NULL AUTO_INCREMENT,
    firstName varchar(255) NOT NULL,
    email varchar(255) NOT NULL UNIQUE,
    mobile int NOT NULL,
    primary key(customersId)
);

create table product(
	productId int not null auto_increment,
    productName varchar(255) not null,
    price int not null,
    primary key(productId)
);

create table orders (
	orderId int not null auto_increment,
    count int not null,
    productId int not null,
    customersId int not null,
    primary key(orderId),
    foreign key (productId) references product(productId),
    foreign key (customersId) references customers(customersId)
);

create table payment (
	paymentId int not null auto_increment,
    total_price int not null,
    orderId int not null,
    customersId int not null,
    primary key(paymentId),
    foreign key (orderId) references orders(orderId),
    foreign key (customersId) references customers(customersId)
);

insert into customers values (0,'harita','hr@gmail.com',98745622),
    (0,'shradha','sh@gmail.com',99222000),
    (0,'yashvi','yg@gmail.com',98777770),
    (0,'snehi','sd@gmail.com',962001111);

insert into product values (0,'iphone14',80000),
	(0,'iphone15',85000),
    (0,'iphone12',60000),
    (0,'iphone13',75000);

insert into orders values (0,3,2,2),
	(0,1,1,3),
	(0,2,4,1),
	(0,1,2,4);

insert into payment values (0,155000,2,4),
	(0,199000,3,2),
    (0,60000,2,4),
    (0,160000,2,4);
    
select customers.firstName,orders.orderId, product.productName
	from payment
	join orders on payment.orderId = orders.orderId 
	join product on orders.productId = product.productId
	join customers on orders.customersId = customers.customersId
	where payment.paymentId = 1;
	


select product.*,orders.orderId
    from payment
    join orders on payment.orderId = orders.orderId
    join product on orders.productId = product.productId
    where payment.paymentId = 1;
