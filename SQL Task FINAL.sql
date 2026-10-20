create database	bookstore_db;
use bookstore_db;

create  table customers (
customer_id int primary key,
full_name varchar(100) not null,
Email varchar (100) unique not null,
phone varchar (100),
city varchar(50),
Created_date date);
select * from customers ;

create table Books (
Book_id Int primary key,
Title varchar(50),
Author varchar(50),
Category Varchar(50),
Price decimal (5,2),
Stock_qty int);
 select * from Books;
 
 create table Orders (
 Order_id int primary key,
 Customer_id int,
 Order_date date,
 Status Varchar (50) 
 );
  select * from orders;
  
  create table Order_items(
  Order_items_id int Primary key,
  Order_id int,
  booking_id int,
  Quantity int );
    select * from Order_items;
    
    
    alter table customers add column country varchar(50);
    alter table Order_items add column discount int;
    alter table customers modify phone varchar(50);
    alter table Books rename column  Stock_qty to Stock_quantity
    
    
    alter table Books add constraint ck_Price check (Price > 0);
    alter table Order_items add constraint check_quantity check (quantity > 0);
     alter table books add constraint check_SQ check (Stock_quantity > 0);
   alter table  books Modify column Title varchar(50) not null ; 
alter table Orders Modify column order_date date  not null ; 

alter table  Orders alter column status set default 'Pending';
alter table customers modify column Created_date date default (current_date);
alter table Orders add constraint Fk_order_customers foreign key (Customer_id) references customers(Customer_id);
alter table Order_items add constraint Fk_orders_id_o foreign key (Order_id) references Orders(Order_id);
alter table Order_items add constraint Fk_orders_id_Book foreign key (Order_id) references Books (Book_id); 

insert into customers (Customer_id, Full_name, Email, Phone, City) values
(1,'Rahul jadhav','rahuljadhav@gmail.com','9325769464','Walwa'),
(2,'Prasad jadhav', 'prasadjadhav@gamil.com','9112341188','Nagthane'),
(3,'Aditya Tagare','adityatagare@gamil.com','9764737473','kolhapur'),
(4,'Satveek Pawar','satveekpawar@gmail.com','8381015965','Sangli'),
(5,'Shubham Navale','shubhamnavale@gmail.com','8381015965','Satar');

insert into Books (Book_id,Title,Author,Category,Price,Stock_quantity) values 
('101','Abc','xyz','B','60.00','20'),
('102','Bcd','pqr','a','45.00','18'),
('103','ced','rst','C','30.00','20'),
('104','xyz','ast','S','65.00','25'),
('105','Pvt','lmn','V','55.00','30'),
('106','Vmn','ast','A','66.00','22'),
('107','arn','vwx','Z','55.00','19'),
('108','akn','aab','Q','99.00','22'),
('109','llm','bbc','T','48.20','5'),
('110','Abz','bbz','U','51.00','8');

INSERT INTO orders (order_id, customer_id, order_date, status) VALUES
(1003, 3, '2026-10-03', 'Processing'),
(1004, 4, '2026-10-04', 'Pending'),
(1005, 5, '2026-10-05', 'Processing'),
(1006, 1, '2026-10-06', 'Pending');

select Order_id from Orders;

INSERT INTO order_items (order_items_id, Order_id, Booking_id, quantity) VALUES
(1, 1003, 101, 1),
(2, 1003, 105, 2),
(3, 1004, 102, 1),
(4, 1003, 103, 2),
(5, 1003, 107, 1),
(6, 1004, 104, 1),
(7, 1004, 106, 1),
(8, 1005, 108, 3),
(9, 1005, 109, 1),
(10, 1006, 110, 2);
DESCRIBE order_items;
alter table Order_items add constraint Fk_orders_id_Bookings foreign key (Booking_id) references Books (Book_id); 
ALTER TABLE order_items
DROP FOREIGN KEY Fk_orders_id_Book;

update Books Set Price = price*1.10;
select* from Books
update Orders set status = 'Shipped' where order_id=1003;
select * From Orders;
update customers set City = "mumbai" where customer_id =1;