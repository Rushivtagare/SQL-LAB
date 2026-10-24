-- Retrieve only the following details from the Accounts table: AccountID, AccountType, and Balance.
select AccountId , AccountType ,Balance From Accounts;
-- Retrieve Customers with Savings Accounts
select * from Accounts where AccountType = 'Saving';
-- Retrieve Accounts with Balance Greater Than 25000
select * from Accounts where Balance >25000;
-- Retrieve Transactions Between Specific Amounts 5000 -20000
select * from Transaction where Amount Between 5000 and 20000;
-- Retrieve Records for Selected Customers 101,102,103,104
select * from Customers where CustomerId in(101,102,103,104);
-- This displays customers whose names start with the letter R.
select * from Customers where firstName like'R%';

-- 1. Retrieve all current account records
select * from Accounts Where AccountType = 'currunt';

-- 2. Find accounts with balance less than 15000
select * from  Accounts Where Balance<15000;

-- 3. Display transactions between 1000 and 10000
select * from Transaction Where  Amount Between 1000 and 10000;

-- 4. Retrieve customer records for CustomerID 104 and 105
select * from Customers Where CustomerId in (104 , 105);

-- 5. Display customers whose last name starts with S
select * from Customers Where LastName like 'S%';

-- Display Customers in Alphabetical Order
select * from Customers  Order by LastName ASc;

-- Display Accounts with Highest Balance First
select * from Accounts  Order by Balance DESC;

-- Retrieve Unique Account Types
select * from Accounts Group by AccountType ;

-- Display Top 3 Highest Balance Accounts
select * from  accounts order by Balance DESC limit 3; 

-- Skip Initial Records While Viewing Transactions
select * from Transaction transactionId limit 4 Offset 2 ;

-- 1. Display customers sorted by LastName
select * from Customers Order by LastName ASC;
-- 2. Retrieve top 5 transactions with highest amount
select * from Transaction  Order by Amount ASC Limit 5;
-- 3. Display unique transaction types
select * from Transaction;
-- 4. Skip the first 3 transaction records and display the next 4 records
select * from transaction order by transactionId Limit 1 offset 2; 

-- Find Customers Without Phone Numbers
select * from Customers where phone is null;

-- Find Customers Having Email Addresses
select * from Customers where Email Is Not NUll ;

 
-- 1. Find customers without email addresses
select * from Customers where Email is null;

-- 2. Display all accounts where balance information is available
select * from accounts where balance is Not null; 
 
-- Search Customers Whose First Name Starts with “A”
select * from Customers where FirstName like 'A%';

-- Search Customers Whose Email Contains “gmail”
select * from Customers where Email like '%gmail%';
-- Search Customers Whose Last Name Ends with “kar"
Select * from Customers where LastName like '%kar';

-- 1. Display customers whose first name starts with R
select * from Customers where FirstName like 'R%';
-- 2. Find customers whose email contains yahoo
select * from Customers where Email like '%yahoo%';

-- 3. Display customers whose last name starts with P
select * from Customers where LastName like 'P%';

-- 4. Search customers whose phone number ends with 99
select * from Customers where Phone like '%99';

-- The finance team wants to review only Savings and Current account holders.
select * from accounts where Accounttype in ('saving', 'currunt');

-- The audit department wants to investigate only Deposit and Withdrawal transactions.
select * from transaction where Transactiontype in ('Deposit', 'Withdraw');
-- The customer relationship team wants to review records for a specific set of customers. 101,102,105
select * from Customers where CustomerId in (101,102,105);

-- 1. Display accounts belonging to Salary and Savings account types
-- select * from Accounts where  Accounttype in ('saving,'salary');
-- 2. Retrieve transactions for Payment and Deposit categories
select * from Accounts where  Accounttype in ('payment','Deposit');
-- 3. Display customer records for CustomerID 103 and 104
select * from customers where CustomerId in (103,104);
-- 4. Retrieve selected account records using AccountID values
select AccountId , Accounttype , Balance, CustomerId, BranchId from accounts where AccountID in (201,202,203);

-- Display Customers in Ascending Order of Last Name
select * from Customers order by LastName ASC ;
-- Display Accounts with Highest Balance First
select * from accounts order by balance DESC ;

-- Display Transactions Sorted by Transaction Date
Select * from transaction order by TransactionDate ;

-- 1. Display customers sorted by FirstName
select * from customers order by  FirstName;
-- 2. Display accounts sorted by AccountType
select * from accounts order by Accounttype ;
-- 3. Display transactions sorted by Amount in descending order
select * from  transaction order by Amount DESC; 
-- 4. Display customers sorted by DateOfBirth
select * from Customers Order by Dateofbirth;

-- Display Only Top 5 Highest Balance Accounts
select * from accounts order by Balance DESC limit 5;

-- Display First 3 Customer Records
select * from Customers  customerId limit 3;

-- Skip Initial Transaction Records 3 While Viewing Data record 2
select * from transaction transactionId limit 2 offset 3;

-- 1. Display top 3 transactions with highest amount
select * from transaction order by Amount DESC limit 3;

-- 2. Retrieve only 4 customer records
select * from customers order by CustomerId limit 4;

-- 3. Skip first 2 account records and display next 3 records
select * from Accounts order by AccountID limit 3 offset 2 ;

-- 4. Display top 5 latest transactions
select * from Transaction order by TransactionDate;

-- Display Savings Account Customers Sorted by Balance
-- Categorize Accounts Using Balance
-- Balance >50000 then premium account
-- Balance >2500 then standar account
Select * from accounts;
select AccountId , Accounttype , Balance, 
CASE
when Balance >50000 Then 'PM'
when Balance >25000 Then 'SA'
End  From accounts;
-- · High Transaction
-- · Medium Transaction
-- · Low Transaction
-- based on transaction amount.

select * from transaction ;
select transactionId , Transactiontype , Amount, 
CASE
when Amount > 6000 Then 'High Transaction'
when Amount >4000  Then 'Medium Transaction'
when Amount >2000 Then 'Low Transaction'
END  From transaction;
 