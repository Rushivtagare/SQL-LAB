create database bank;

use bank;

create table Accounts(
AccountID int,
AccountType varchar(20),
Balance float
);
select * from Accounts;

use bank;
CREATE TABLE Transactions1 (

    TransactionID INT,
    TransactionDate DATE,
    Amount float,
    TransactionType VARCHAR(20)
);
select * from Transactions1;

CREATE TABLE Branches (
    BranchID INT,
    BranchName VARCHAR(100),
    BranchAddress VARCHAR(200),
    BranchPhone VARCHAR(15)
);

CREATE TABLE AccountBranches ( 
		AssignmentDate DATE
);
select * from AccountBranches

CREATE TABLE Loans (
    LoanID INT,
    LoanAmount float,
    InterestRate float,
    StartDate DATE,
    EndDate DATE
);


create table customer (
CutomerID int,
FirstName varchar(50),
LastName varchar(50),
Email varchar(100),
phone Varchar(15)
);

alter table customer add  DateOFBirth date;
select * from Customer;
