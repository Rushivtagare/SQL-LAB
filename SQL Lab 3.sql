create database Bankdb ;
use Bankdb ;

create table customers(
CustomerId int ,
FirstName varchar (25),
LastName varchar (25),
Email varchar(100),
Phone varchar(15),
Dateofbirth date);
insert into customers (CustomerId,FirstName,LastName,Email,Phone,Dateofbirth) values 
(101,'Rahul','Sharma','rahul.sharma@gmail.com',9999999999,'1998-04-15'),
(102,'Priya','Patil','priya@gmail.com',9988776655,'2000-09-20'),
(103,'Amit','Patel','amit.patel@gmail.com',9875500001,'1995-06-18'),
(104,'Sneha','Joshiu','sneha.joshi@gmail.com',9875500002,'1997-09-12'),
(105,'Rohan','Kulkarni','rohan.k@gmail.com',9875500003,'1993-11-25');

create table  Loan (
LoanID int,
LoanAmount Varchar(20),
InterestRate Decimal(3,2),
StartDate date,
EndDate date,
CustomerId int);
 alter table  Loan Modify InterestRate decimal (5,3);
insert into Loan (LoanID,LoanAmount,InterestRate,StartDate,EndDate,CustomerId) values
(301,500000,'8.50','2025-01-15','2030-01-15',101),
(302,300000,'9.25','2025-02-15','2028-02-10',102),
(303,750000,'8.75','2025-03-20','2032-03-20',103),
(304,250000,'10.00','2025-04-05','2029-04-05',104),
(305,1000000,'7.95','2025-05-12','2035-05-12',105);
create table Transaction (
transactionId int,
TransactionDate date,
Amount Varchar(50),
Transactiontype varchar(50),
AccountId Varchar (50));

insert into Transaction( transactionId,Transactiondate,Amount,TransactionType,AccountId) values
(301,'2025-05-10',5000,'Deposit',201),
(302,'2025-05-11',2500,'Withdraw',202),
(303,'2025-05-12',10000,'Deposit',203),
(304,'2025-05-13',3000,'Withdraw',204),
(305,'2025-05-14',7000,'deposit',205) ;

create table Branch (
BranchId int ,
BranchName varchar(50),
BranchAddress Varchar (50),
BranchPhone Varchar (15));
insert into Branch (BranchId,BranchName,BranchAddress,BranchPhone) values 
(1,'mumbai','Andheri,Mumbai',0221111111),
(2,'Pune','ShivajinagarPune',0202222222),
(3,'Nashik','College Road,Nashik',0253222222),
(4,'Nagpur','sitabuldi,Nagpur',0712333333),
(5,'Navi Mumbai','vashi,Navimumbai',0224444444);
Create table Accounts (
AccountID int,
Accounttype Varchar(20),
Balance Varchar (20),
CustomerId varchar(20),
BranchId default int );

Insert into Accounts (AccountId,Accounttype,Balance,CustomerId,BranchId) values
(201,'Saving',25000,101,1),
(202,'Currunt',40000,102,2),
(203,'Saving',35000,103,3),
(204,'Currunt',60000,104,4),
(205,'Saving',45000,105,5);



UPDATE Customers
SET Phone='88888888'
WHERE CustomerID=101;
select * from Customers;



UPDATE Customers
SET Email='rahulsharma@gmail.com'
WHERE CustomerID=101;


UPDATE Accounts
SET Balance = 30000
WHERE AccountId=201;
select * from  Accounts;

DELETE FROM Transaction
WHERE transactionId = 302;
select * from  transaction;

Delete From Accounts where AccountId =202;
select * from  Accounts;

delete from Transaction Where TransactionId =302;
Delete from Accounts Where AccountId =202;
