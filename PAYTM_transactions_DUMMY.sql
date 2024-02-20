create database RBI;
use RBI;
CREATE TABLE Before_Customers (
  AccountNumber INT PRIMARY KEY,
  PhoneNumber VARCHAR(10) NOT NULL,
  AccountOpeningDate DATE NOT NULL,
  AccountType VARCHAR(20) NOT NULL,
  CustomerName VARCHAR(255) NOT NULL transactions
);

-- Insert 50 rows of data into the Before_Customers table
INSERT INTO Before_Customers VALUES
(1001, '9876543210', '2020-01-01', 'Savings', 'Shubham Thakur'),
(1002, '8765432109', '2020-02-02', 'Current', 'Aman Chopra'),
(1003, '7654321098', '2020-03-03', 'Savings', 'Naveen Tulasi'),
(1004, '6543210987', '2020-04-04', 'Current', 'Aditya Arpan'),
(1005, '5432109876', '2020-05-05', 'Savings', 'Nishant Jain'),
(1006, '4321098765', '2020-06-06', 'Current', 'Ria Sharma'),
(1007, '3210987654', '2020-07-07', 'Savings', 'Anjali Singh'),
(1008, '2109876543', '2020-08-08', 'Current', 'Rajesh Kumar'),
(1009, '1098765432', '2020-09-09', 'Savings', 'Priya Patel'),
(1010, '0987654321', '2020-10-10', 'Current', 'Karan Malhotra'),
(1011, '9871234567', '2020-11-11', 'Savings', 'John Smith'),
(1012, '8762345678', '2020-12-12', 'Current', 'Alice Brown'),
(1013, '7653456789', '2021-01-01', 'Savings', 'David Jones'),
(1014, '6544567890', '2021-02-02', 'Current', 'Emma Wilson'),
(1015, '5435678901', '2021-03-03', 'Savings', 'James Miller'),
(1016, '4326789012', '2021-04-04', 'Current', 'Sarah Taylor'),
(1017, '3217890123', '2021-05-05', 'Savings', 'Michael Johnson'),
(1018, '2108901234', '2021-06-06', 'Current', 'Anna Lee'),
(1019, '1099012345', '2021-07-07', 'Savings', 'Robert Williams'),
(1020, '0090123456', '2021-08-08', 'Current', 'Lisa Davis'),
(1021, '9876543211', '2021-09-09', 'Savings', 'Rajat Sharma'),
(1022, '8765432108', '2021-10-10', 'Current', 'Pooja Gupta'),
(1023, '7654321097', '2021-11-11', 'Savings', 'Vikas Singh'),
(1024, '6543210986', '2021-12-12', 'Current', 'Riya Kapoor'),
(1025, '5432109875', '2022-01-01', 'Savings', 'Rohan Verma'),
(1026, '4321098764', '2022-02-02', 'Current', 'Neha Jain'),
(1027, '3210987653', '2022-03-03', 'Savings', 'Suresh Patel'),
(1028, '2109876542', '2022-04-04', 'Current', 'Geeta Sharma'),
(1029, '1098765431', '2022-05-05', 'Savings', 'Ramesh Kumar'),
(1030, '0987654320', '2022-06-06', 'Current', 'Meena Singh'),
(1031, '9871234566', '2022-07-07', 'Savings', 'Jack Wilson'),
(1032, '8762345677', '2022-08-08', 'Current', 'Rose Taylor'),
(1033, '7653456788', '2022-09-09', 'Savings', 'Harry Brown'),
(1034, '6544567899', '2022-10-10', 'Current', 'Lily Jones'),
(1035, '5435678900', '2022-11-11', 'Savings', 'Tom Smith'),
(1036, '4326789011', '2022-12-12', 'Current', 'Lucy Miller'),
(1037, '3217890122', '2023-01-01', 'Savings', 'Sam Johnson'),
(1038, '2108901233', '2023-02-02', 'Current', 'Ella Lee'),
(1039, '1099012344', '2023-03-03', 'Savings', 'Ben Williams'),
(1040, '0090123455', '2023-04-04', 'Current', 'Zoe Davis'),
(1041, '9876543212', '2023-05-05', 'Savings', 'Rajiv Gupta'),
(1042, '8765432107', '2023-06-06', 'Current', 'Anita Verma'),
(1043, '7654321096', '2023-07-07', 'Savings', 'Vikram Kapoor'),
(1044, '6543210985', '2023-08-08', 'Current', 'Ritu Jain'),
(1045, '5432109874', '2023-09-09', 'Savings', 'Rohit Sharma'),
(1046, '4321098763', '2023-10-10', 'Current', 'Nisha Patel'),
(1047, '3210987652', '2023-11-11', 'Savings', 'Sunil Singh'),
(1048, '2109876541', '2023-12-12', 'Current', 'Geeta Kumar'),
(1049, '1098765430', '2024-01-01', 'Savings', 'Ravi Malhotra'),
(1050, '0987654319', '2024-02-02', 'Current', 'Meera Chopra');
select * from Before_customers;
CREATE TABLE Transactions (
  TransactionID INT PRIMARY KEY,
  AccountNo INT NOT NULL,
  CustomerName VARCHAR(255) NOT NULL,
  TransactionDate DATE NOT NULL,
  TransactionAmount DECIMAL(10,2) NOT NULL,
  TransactionType VARCHAR(20) NOT NULL,
  BankProfit DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (AccountNo) REFERENCES Before_Customers (AccountNumber)
);

-- Insert 50 rows of data into the Transactions table
INSERT INTO Transactions VALUES
(1, 1001, 'Shubham Thakur', '2020-01-01', 1000, 'Deposit', 10),
(2, 1002, 'Aman Chopra', '2020-02-02', 500, 'Withdrawal', 5),
(3, 1003, 'Naveen Tulasi', '2020-03-03', 2000, 'Deposit', 20),
(4, 1004, 'Aditya Arpan', '2020-04-04', 1500, 'Withdrawal', 15),
(5, 1005, 'Nishant Jain', '2020-05-05', 3000, 'Deposit', 30),
(6, 1006, 'Ria Sharma', '2020-06-06', 1000, 'Withdrawal', 10),
(7, 1007, 'Anjali Singh', '2020-07-07', 4000, 'Deposit', 40),
(8, 1008, 'Rajesh Kumar', '2020-08-08', 500, 'Withdrawal', 5),
(9, 1009, 'Priya Patel', '2020-09-09', 5000, 'Deposit', 50),
(10, 1010, 'Karan Malhotra', '2020-10-10', 2000, 'Withdrawal', 20),
(11, 1011, 'John Smith', '2020-11-11', 6000, 'Deposit', 60),
(12, 1012, 'Alice Brown', '2020-12-12', 1500, 'Withdrawal', 15),
(13, 1013, 'David Jones', '2021-01-01', 7000, 'Deposit', 70),
(14, 1014, 'Emma Wilson', '2021-02-02', 1000, 'Withdrawal', 10),
(15, 1015, 'James Miller', '2021-03-03', 8000, 'Deposit', 80),
(16, 1016, 'Sarah Taylor', '2021-04-04', 500, 'Withdrawal', 5),
(17, 1017, 'Michael Johnson', '2021-05-05', 9000, 'Deposit', 90),
(18, 1018, 'Anna Lee', '2021-06-06', 2000, 'Withdrawal', 20),
(19, 1019, 'Robert Williams', '2021-07-07', 10000, 'Deposit', 100),
(20, 1020, 'Lisa Davis', '2021-08-08', 1500, 'Withdrawal', 15),
(21, 1021, 'Rajat Sharma', '2021-09-09', 11000, 'Deposit', 110),
(22, 1022, 'Pooja Gupta', '2021-10-10', 1000, 'Withdrawal', 10),
(23, 1023, 'Vikas Singh', '2021-11-11', 12000, 'Deposit', 120),
(24, 1024, 'Riya Kapoor', '2021-12-12', 500, 'Withdrawal', 5),
(25, 1025, 'Rohan Verma', '2022-01-01', 13000, 'Deposit', 130),
(26, 1026, 'Neha Jain', '2022-02-02', 2000, 'Withdrawal', 20),
(27, 1027, 'Suresh Patel', '2022-03-03', 14000, 'Deposit', 140),
(28, 1028, 'Geeta Sharma', '2022-04-04', 1500, 'Withdrawal', 15),
(29, 1029, 'Ramesh Kumar', '2022-05-05', 15000, 'Deposit', 150),
(30, 1030, 'Meena Singh', '2022-06-06', 1000, 'Withdrawal', 10),
(31, 1031, 'Jack Wilson', '2022-07-07', 16000, 'Deposit', 160),
(32, 1032, 'Rose Taylor', '2022-08-08', 500, 'Withdrawal', 5),
(33, 1033, 'Harry Brown', '2022-09-09', 17000, 'Deposit', 170),
(34, 1034, 'Lily Jones', '2022-10-10', 2000, 'Withdrawal', 20),
(35, 1035, 'Tom Smith', '2022-11-11', 18000, 'Deposit', 180),
(36, 1036, 'Lucy Miller', '2022-12-12', 1500, 'Withdrawal', 15),
(37, 1037, 'Sam Johnson', '2023-01-01', 19000, 'Deposit', 190),
(38, 1038, 'Ella Lee', '2023-02-02', 1000, 'Withdrawal', 10),
(39, 1039, 'Ben Williams', '2023-03-03', 20000, 'Deposit', 200),
(40, 1040, 'Zoe Davis', '2023-04-04', 500, 'Withdrawal', 5),
(41, 1041, 'Rajiv Gupta', '2023-05-05', 21000, 'Deposit', 210),
(42, 1042, 'Anita Verma', '2023-06-06', 2000, 'Withdrawal', 20),
(43, 1043, 'Vikram Kapoor', '2023-07-07', 22000, 'Deposit', 220),
(44, 1044, 'Ritu Jain', '2023-08-08', 1500, 'Withdrawal', 15),
(45, 1045, 'Rohit Sharma', '2023-09-09', 23000, 'Deposit', 230),
(46, 1046, 'Nisha Patel', '2023-10-10', 1000, 'Withdrawal', 10),
(47, 1047, 'Sunil Singh', '2023-11-11', 24000, 'Deposit', 240),
(48, 1048, 'Geeta Kumar', '2023-12-12', 500, 'Withdrawal', 5),
(49, 1049, 'Ravi Malhotra', '2024-01-01', 25000, 'Deposit', 250),
(50, 1050, 'Meera Chopra', '2024-02-02', 2000, 'Withdrawal', 20),
(51, 1001, 'Shubham Thakur', '2024-03-01', 100, 'Deposit', -10),
(52, 1002, 'Aman Chopra', '2024-03-01', 50, 'Withdrawal', -5),
(53, 1003, 'Naveen Tulasi', '2024-03-01', 200, 'Deposit', -20),
(54, 1004, 'Aditya Arpan', '2024-03-01', 150, 'Withdrawal', -15),
(55, 1005, 'Nishant Jain', '2024-03-01', 300, 'Deposit', -30),
(56, 1006, 'Ria Sharma', '2024-03-01', 100, 'Withdrawal', -10),
(57, 1007, 'Anjali Singh', '2024-03-01', 400, 'Deposit', -40),
(58, 1008, 'Rajesh Kumar', '2024-03-01', 50, 'Withdrawal', -5),
(59, 1009, 'Priya Patel', '2024-03-01', 500, 'Deposit', -50),
(60, 1010, 'Karan Malhotra', '2024-03-01', 200, 'Withdrawal', -20),
(61, 1011, 'John Smith', '2024-03-01', 600, 'Deposit', -60),
(62, 1012, 'Alice Brown', '2024-03-01', 150, 'Withdrawal', -15),
(63, 1013, 'David Jones', '2024-03-01', 700, 'Deposit', -70),
(64, 1014, 'Emma Wilson', '2024-03-01', 100, 'Withdrawal', -10),
(65, 1015, 'James Miller', '2024-03-01', 800, 'Deposit', -80),
(66, 1016, 'Sarah Taylor', '2024-03-01', 50, 'Withdrawal', -5),
(67, 1017, 'Michael Johnson', '2024-03-01', 900, 'Deposit', -90),
(68, 1018, 'Anna Lee', '2024-03-01', 200, 'Withdrawal', -20),
(69, 1019, 'Robert Williams', '2024-03-01', 1000, 'Deposit', -100),
(70, 1020, 'Lisa Davis', '2024-03-01', 150, 'Withdrawal', -15),
(71, 1021, 'Rajat Sharma', '2024-03-01', 1100, 'Deposit', -110),
(72, 1022, 'Pooja Gupta', '2024-03-01', 100, 'Withdrawal', -10),
(73, 1023, 'Vikas Singh', '2024-03-01', 1200, 'Deposit', -120),
(74, 1024, 'Riya Kapoor', '2024-03-01', 50, 'Withdrawal', -5),
(75, 1025, 'Rohan Verma', '2024-03-01', 1300, 'Deposit', -130),
(76, 1026, 'Neha Jain', '2024-03-01', 200, 'Withdrawal', -20),
(77, 1027, 'Suresh Patel', '2024-03-01', 1400, 'Deposit', -140),
(78, 1028, 'Geeta Sharma', '2024-03-01', 150, 'Withdrawal', -15),
(79, 1029, 'Ramesh Kumar', '2024-03-01', 1500, 'Deposit', -150),
(80, 1030, 'Meena Singh', '2024-03-01', 100, 'Withdrawal', -10),
(81, 1031, 'Jack Wilson', '2024-03-01', 1600, 'Deposit', -160),
(82, 1032, 'Rose Taylor', '2024-03-01', 50, 'Withdrawal', -5),
(83, 1033, 'Harry Brown', '2024-03-01', 1700, 'Deposit', -170),
(84, 1034, 'Lily Jones', '2024-03-01', 200, 'Withdrawal', -20),
(85, 1035, 'Tom Smith', '2024-03-01', 1800, 'Deposit', -180),
(86, 1036, 'Lucy Miller', '2024-03-01', 150, 'Withdrawal', -15),
(87, 1037, 'Sam Johnson', '2024-03-01', 1900, 'Deposit', -190),
(88, 1038, 'Ella Lee', '2024-03-01', 100, 'Withdrawal', -10),
(89, 1039, 'Ben Williams', '2024-03-01', 2000, 'Deposit', -200),
(90, 1040, 'Zoe Davis', '2024-03-01', 50, 'Withdrawal', -5),
(91, 1041, 'Rajiv Gupta', '2024-03-01', 2100, 'Deposit', -210),
(92, 1042, 'Anita Verma', '2024-03-01', 200, 'Withdrawal', -20),
(93, 1043, 'Vikram Kapoor', '2024-03-01', 2200, 'Deposit', -220),
(94, 1044, 'Ritu Jain', '2024-03-01', 150, 'Withdrawal', -15),
(95, 1045, 'Rohit Sharma', '2024-03-01', 2300, 'Deposit', -230),
(96, 1046, 'Nisha Patel', '2024-03-01', 100, 'Withdrawal', -10),
(97, 1047, 'Sunil Singh', '2024-03-01', 2400, 'Deposit', -240),
(98, 1048, 'Geeta Kumar', '2024-03-01', 50, 'Withdrawal', -5),
(99, 1049, 'Ravi Malhotra', '2024-03-01', 2500, 'Deposit', -250),
(100, 1050, 'Meera Chopra', '2024-03-01', 200, 'Withdrawal', -20);
select *from transactions;
-- Calculate total deposits and withdrawals for each account
SELECT 
    c.AccountNumber,
    c.CustomerName,
    c.AccountType,
    SUM(CASE WHEN t.TransactionType = 'Deposit' THEN t.TransactionAmount ELSE 0 END) AS TotalDeposits,
    SUM(CASE WHEN t.TransactionType = 'Withdrawal' THEN t.TransactionAmount ELSE 0 END) AS TotalWithdrawals,
    SUM(CASE WHEN t.TransactionType = 'Deposit' THEN t.BankProfit ELSE 0 END) AS TotalDepositProfit,
    SUM(CASE WHEN t.TransactionType = 'Withdrawal' THEN t.BankProfit ELSE 0 END) AS TotalWithdrawalProfit
FROM 
    Before_Customers c
LEFT JOIN 
    Transactions t ON c.AccountNumber = t.AccountNo
GROUP BY 
    c.AccountNumber, c.CustomerName, c.AccountType
ORDER BY 
    c.AccountNumber;
   -- Analyze customer account types and balances--
   select 
   c.AccountNumber,
   c.AccountType,
   c.CustomerName from  Before_customers c
   LEFT JOIN 
    Transactions t ON c.AccountNumber = t.AccountNo
    GROUP BY 
    c.AccountNumber, c.CustomerName, c.AccountType;
    -- Identify patterns in transaction frequency and amounts.--
  SELECT 
    TransactionDate,
    COUNT(*) AS TotalTransactions,
    AVG(TransactionAmount) AS AverageTransactionAmount
FROM 
    Transactions
GROUP BY 
    TransactionDate
ORDER BY 
    TransactionDate;
-- transaction data for compliance with anti-money laundering (AML) regulations.--
    SELECT 
    TransactionID,
    AccountNo,
    CustomerName,
    TransactionDate,
    TransactionAmount,
    TransactionType
FROM 
    Transactions
WHERE 
    TransactionAmount > 10000 -- Set the threshold amount for AML compliance
    OR TransactionType = 'Deposit' -- Or any other criteria specific to AML regulations
ORDER BY 
    TransactionDate;
select count(CustomerName) FROM Transactions;
SELECT * FROM Before_customers
where AccountType='Savings' ;
-- give me detailed inform of the perticuar cutomer  --
select *from Before_customers 
where CustomerName ='Ria Sharma';
--  highest transaction amount --
select TransactionAmount,AccountNo  from transactions
order by TransactionAmount desc limit 1;
-- highest transaction profit --
 select BankProfit ,TransactionAmount from transactions 
 order by BankProfit  desc limit 5;
 -- how many transaction done on the same date --
SELECT TransactionDate, COUNT(*) AS TransactionCount
FROM transactions
GROUP BY TransactionDate
HAVING COUNT(*) > 1;
-- how many transaction done on the same date in deposit section --
 SELECT TransactionDate, COUNT(*) AS TransactionCount
FROM transactions
WHERE TransactionType = 'Deposit'
GROUP BY TransactionDate
HAVING COUNT(*) > 1;

