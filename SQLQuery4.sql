
USE EmployeePerformanceDB;

-- Employee Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    HireDate DATE
);

-- Department Table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

-- Performance Table
CREATE TABLE Performance (
    PerformanceID INT PRIMARY KEY,
    EmployeeID INT,
    ReviewDate DATE,
    Score INT,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Employees
INSERT INTO Employees VALUES 
(101, 'Alice', 2, 75000, '2023-08-15'),
(102, 'Bob', 1, 50000, '2022-05-01'),
(103, 'Charlie', 3, 60000, '2024-11-20'),
(104, 'David', 2, 80000, '2021-03-12'),
(105, 'Eva', 3, 90000, '2024-01-10'),
(106, 'Franklin', 4, 70000, '2023-09-15'),
(107, 'George', 1, 55000, '2022-06-01'),
(108, 'Harry', 5, 65000, '2024-10-20'),
(109, 'Ivan', 4, 85000, '2021-07-12'),
(110, 'Jake', 3, 95000, '2024-02-10');

-- Departments
INSERT INTO Departments VALUES 
(1, 'HR'), 
(2, 'IT'), 
(3, 'Finance'),
(4, 'Payroll'),
(5, 'Testing');

-- Performance
INSERT INTO Performance VALUES 
(1, 101, '2024-06-01', 88),
(2, 102, '2024-06-01', 70),
(3, 103, '2025-05-30', 95),
(4, 104, '2025-04-01', 78),
(5, 105, '2025-06-01', 92),
(6, 106, '2024-06-01', 89),
(7, 107, '2024-06-01', 77),
(8, 108, '2025-05-30', 96),
(9, 109, '2025-04-01', 87),
(10, 110, '2025-06-01', 94);

SELECT * FROM Employees;
SELECT * FROM Departments;
SELECT * FROM Performance;

SELECT TOP 3 
    E.Name, 
    D.DepartmentName, 
    P.Score, 
    P.ReviewDate
FROM Performance P
JOIN Employees E ON P.EmployeeID = E.EmployeeID
JOIN Departments D ON E.DepartmentID = D.DepartmentID
ORDER BY P.Score DESC;

SELECT 
    D.DepartmentName,
    AVG(P.Score) AS AverageScore
FROM Performance P
JOIN Employees E ON P.EmployeeID = E.EmployeeID
JOIN Departments D ON E.DepartmentID = D.DepartmentID
GROUP BY D.DepartmentName;

SELECT 
    E.Name, 
    E.Salary, 
    P.Score
FROM Employees E
JOIN Performance P ON E.EmployeeID = P.EmployeeID
WHERE E.Salary > (SELECT AVG(Salary) FROM Employees)
  AND P.ReviewDate = (SELECT MAX(ReviewDate) FROM Performance WHERE P.EmployeeID = E.EmployeeID) 
  AND P.Score > 80;

SELECT 
    Name, 
    HireDate 
FROM Employees
WHERE HireDate >= DATEADD(YEAR, -1, GETDATE());
