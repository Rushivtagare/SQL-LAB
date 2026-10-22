use bankdb;
select AccountId,Accounttype,Balance from Accounts;
select * from Accounts where Accounttype = 'Saving';
select * from accounts where Balance >25000;
select * from Accounts where AccountId>=202 and AccountId>=204;
select * from Customers where CustomerId in (101,102,103,104);
select * from Accounts Where Accounttype = 'currunt';
select * from Accounts where Balance<=15000;
select Amount from Transaction where Amount Between 1000 And 10000;
select * from Customers where CustomerID between 104 and 105;
select * from Loan where InterestRate>9 And LoanAmount>50000;
select * from Branch where BranchAddress = 'Shivajinagarpune';
select * from Accounts where Balance between 500 and 5000;
select * from accounts Where Balance>25000 and Accounttype='Saving';
select * from loan where interestRate<8.50;
Select* from Customers where DateOfBirth<'1998-01-01';
select * from Branch where BranchId between 2 and 4;
select BranchName,BranchPhone From Branch;
select * from customers  Limit 2 offset 1;
select LastName from Customers  where LastName like'P%';
select Transactiontype from Transaction;
select * from Transaction limit 3 offset 2;
select * from Transaction Where Amount > 5000;
select * from Accounts where Accounttype = 'Saving';
select Accounttype from Accounts where Accounttype = 'Saving';
select * from Transaction where TransactionDate between '11' And '13'; 
select * from Branch where BranchId between '1' and '4';
select * from customers where FirstName  in ('Rahul','Sneha');
select * from Transaction where Amount>3000 and Transactiontype='deposit';




