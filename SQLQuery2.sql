/*

Assignment
 
Employee Management System
 
Step 1: Create the Table
 
CREATE TABLE Employees (

    EmpID INT PRIMARY KEY,

    Name VARCHAR(50),

    Department VARCHAR(50),

    Salary INT,

    JoinDate DATE,

    Email VARCHAR(100)

);
 
 
step 2: put 20 records
 
 
 
Query:

======================================================
 
Show all employee details.

Find all employees in the IT or HR department.

Find employees with salary between 50,000 and 60,000.

Find employees whose name starts with 'A'.

List employees who have not provided their email.

List employees who have a join date.

Display all employees sorted by Salary in descending order.

Display the first 3 highest paid employees.

Display employees 4 to 6 based on their salary

Find employees who joined after 1-Jan-2021.

List employees with a NULL join date or salary 0.


 */

 use HandsOn;

 CREATE TABLE Employees1 (

    EmpID INT PRIMARY KEY,

    EmpName VARCHAR(50),

    Department VARCHAR(50),

    Salary INT,

    JoinDate DATE,

    Email VARCHAR(100)

);

INSERT INTO Employees1 VALUES
(1, 'Alice', 'IT', 55000, '2022-03-15', 'alice@example.com'),
(2, 'Bob', 'HR', 48000, '2021-06-01', 'bob@example.com'),
(3, 'Charlie', 'Finance', 60000, '2020-11-20', NULL),
(4, 'David', 'IT', 52000, '2023-01-10', 'david@example.com'),
(5, 'Eve', 'Marketing', 45000, NULL, 'eve@example.com'),
(6, 'Frank', 'IT', 58000, '2021-12-01', NULL),
(7, 'Grace', 'HR', 50000, '2019-08-23', 'grace@example.com'),
(8, 'Heidi', 'Sales', 43000, '2021-04-11', 'heidi@example.com'),
(9, 'Ivan', 'Finance', 62000, '2020-01-19', 'ivan@example.com'),
(10, 'Judy', 'HR', 51000, NULL, 'judy@example.com'),
(11, 'Arun', 'IT', 53000, '2022-07-22', NULL),
(12, 'Bhanu', 'Admin', 47000, '2020-09-14', 'bhanu@example.com'),
(13, 'Carol', 'IT', 61000, '2021-02-03', 'carol@example.com'),
(14, 'Diana', 'Marketing', 48000, NULL, NULL),
(15, 'Edward', 'IT', 59000, '2023-04-05', 'edward@example.com'),
(16, 'Fay', 'Sales', 44000, '2020-10-30', NULL),
(17, 'George', 'HR', 0, NULL, NULL),
(18, 'Hannah', 'IT', 56000, '2023-06-10', 'hannah@example.com'),
(19, 'Isla', 'Finance', 50000, '2018-12-01', 'isla@example.com'),
(20, 'Anita', 'IT', 60000, NULL, 'anita@example.com');

--Show all employee details

SELECT * FROM Employees1;

--Find all employees in the IT or HR department

SELECT * FROM Employees
WHERE Department IN ('IT', 'HR');

--Find employees with salary between 50,000 and 60,000

SELECT * FROM Employees
WHERE Salary BETWEEN 50000 AND 60000;

--Find employees whose name starts with 'A'

SELECT * FROM Employees
WHERE EmpName LIKE 'A%';

--List employees who have not provided their email

SELECT * FROM Employees
WHERE Email IS NULL;

--List employees who have a join date

SELECT * FROM Employees
WHERE JoinDate IS NOT NULL;

--Display all employees sorted by Salary in descending order

SELECT * FROM Employees
ORDER BY Salary DESC;

--Display the first 3 highest paid employees

SELECT * FROM Employees
ORDER BY Salary DESC
OFFSET 0 rows
FETCH next 3 rows only;

--Display employees 4 to 6 based on their salary

SELECT * FROM Employees
ORDER BY Salary DESC
OFFSET 3 rows 
FETCH next 3 rows only;

--Find employees who joined after 1-Jan-2021

SELECT * FROM Employees
WHERE JoinDate > '2021-01-01';

--List employees with a NULL join date or salary 0

SELECT * FROM Employees
WHERE JoinDate IS NULL OR Salary = 0;

