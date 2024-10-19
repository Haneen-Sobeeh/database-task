create table customer(
name varchar(20),
gender varchar(20),
customer_id int Primary Key,
phone int 
);


create table orders(
name varchar(20),
orders_id int Primary Key,
or_date date 

);

create table prodects(
name varchar(20),
prodercts_id int Primary Key,
price int 

);

create table employee(
name varchar(20),
orders_id int Primary Key,
salary int 

);



insert into customer values('haneen','female',2,078361563);
insert into orders values('order one',3,88);
insert into prodects values('bag',5,22);
insert into employee values('haneen',3,5000);

