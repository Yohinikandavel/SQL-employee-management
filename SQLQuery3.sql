--Create the Database

CREATE DATABASE TechShop;

--Use Database

USE TechShop;

--Create the tables with schema and constraints
--a. Customers Table

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Address VARCHAR(255)
);

--b. Products Table

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Description TEXT,
    Price DECIMAL(10, 2)
);

--c. Orders Table

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

--d. OrderDetails Table

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

--e. Inventory Table

CREATE TABLE Inventory (
    InventoryID INT PRIMARY KEY,
    ProductID INT,
    QuantityInStock INT,
    LastStockUpdate DATE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


--Insert at least 10 sample records

--a. Sample Customers

INSERT INTO Customers VALUES
(1, 'John', 'Doe', 'john@example.com', '9876543210', 'Chennai'),
(2, 'Jane', 'Smith', 'jane@example.com', '8765432109', 'Mumbai'),
(3, 'Alice', 'Johnson', 'alice@example.com', '7654321098', 'Delhi'),
(4, 'Bob', 'Brown', 'bob@example.com', '6543210987', 'Bangalore'),
(5, 'Tom', 'White', 'tom@example.com', '5432109876', 'Hyderabad'),
(6, 'Sara', 'Green', 'sara@example.com', '4321098765', 'Kolkata'),
(7, 'Lily', 'Gray', 'lily@example.com', '3210987654', 'Pune'),
(8, 'Mark', 'Black', 'mark@example.com', '2109876543', 'Jaipur'),
(9, 'Ravi', 'Kumar', 'ravi@example.com', '1098765432', 'Ahmedabad'),
(10, 'Anita', 'Patel', 'anita@example.com', '1987654321', 'Surat');

--b. Sample Products

INSERT INTO Products VALUES
(101, 'Smartphone', 'Latest Android phone', 15000.00),
(102, 'Laptop', 'Core i5, 8GB RAM', 45000.00),
(103, 'Headphones', 'Wireless Bluetooth headphones', 2500.00),
(104, 'Smartwatch', 'Fitness tracker', 4000.00),
(105, 'Tablet', '10 inch display, 64GB', 20000.00),
(106, 'Charger', 'Fast charging USB-C', 1200.00),
(107, 'Camera', 'DSLR 24MP', 55000.00),
(108, 'Monitor', '24 inch LED monitor', 8000.00),
(109, 'Keyboard', 'Mechanical keyboard', 2500.00),
(110, 'Mouse', 'Wireless mouse', 1000.00);

--c. Sample Orders

INSERT INTO Orders VALUES
(1001, 1, '2025-06-01', 17500.00),
(1002, 2, '2025-06-02', 8000.00),
(1003, 3, '2025-06-03', 2500.00),
(1004, 4, '2025-06-04', 4000.00),
(1005, 5, '2025-06-05', 20000.00),
(1006, 6, '2025-06-06', 15000.00),
(1007, 7, '2025-06-07', 1200.00),
(1008, 8, '2025-06-08', 8000.00),
(1009, 9, '2025-06-09', 1000.00),
(1010, 10, '2025-06-10', 55000.00);

--d. Sample OrderDetails

INSERT INTO OrderDetails VALUES
(1, 1001, 101, 1),
(2, 1002, 108, 1),
(3, 1003, 103, 1),
(4, 1004, 104, 1),
(5, 1005, 105, 1),
(6, 1006, 101, 1),
(7, 1007, 106, 1),
(8, 1008, 108, 1),
(9, 1009, 110, 1),
(10, 1010, 107, 1);

--e. Sample Inventory

INSERT INTO Inventory (InventoryID, ProductID, QuantityInStock, LastStockUpdate)
VALUES
(1, 101, 120, '2025-06-10'),
(2, 102, 75,  '2025-06-10'),
(3, 103, 200, '2025-06-10'),
(4, 104, 90,  '2025-06-10'),
(5, 105, 60,  '2025-06-10'),
(6, 106, 150, '2025-06-10'),
(7, 107, 80,  '2025-06-10'),
(8, 108, 110, '2025-06-10'),
(9, 109, 50,  '2025-06-10'),
(10, 110, 130, '2025-06-10');



SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM OrderDetails;
SELECT * FROM Products;
SELECT * FROM Inventory;


-- Task 2: Queries – SELECT, WHERE, BETWEEN, AND, LIKE, INSERT, UPDATE, DELETE
--1. Retrieve names and emails of all customers

SELECT FirstName, LastName, Email FROM Customers;

--2. List all orders with order dates and corresponding customer names

SELECT 
    Orders.OrderID,
    Orders.OrderDate,
    Customers.FirstName,
    Customers.LastName
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

--3. Insert a new customer

INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Address)
VALUES (11, 'Priya', 'Sharma', 'priya.sharma@example.com', '9876543212', 'Coimbatore');

--4. Update all product prices by increasing them by 10%

UPDATE Products
SET Price = Price * 1.10;

SELECT * FROM Products;

--5. Delete a specific order and its details (user provides @OrderID)

-- Assuming the use of a variable or a stored procedure input
DELETE FROM OrderDetails WHERE OrderID = 1002;
DELETE FROM Orders WHERE OrderID = 1002;

SELECT * FROM Orders;
SELECT * FROM OrderDetails;
--Replace @OrderID with actual ID like 1001 for testing:

DELETE FROM OrderDetails WHERE OrderID = 1001;
DELETE FROM Orders WHERE OrderID = 1001;

SELECT * FROM Orders;
SELECT * FROM OrderDetails;

--6. Insert a new order

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES (1011, 3, '2025-06-11', 4500.00);

SELECT * FROM Orders;

--7. Update email and address of a specific customer (by @CustomerID)

UPDATE Customers
SET Email = 'AlJo.email@example.com', Address = 'Peru, Chennai'
WHERE CustomerID = 3;

select * from Customers;

--8. Recalculate and update total cost of each order

UPDATE Orders
SET TotalAmount = (
    SELECT SUM(od.Quantity * p.Price)
    FROM OrderDetails od
    JOIN Products p ON od.ProductID = p.ProductID
    WHERE od.OrderID = Orders.OrderID
);

SELECT * FROM OrderDetails;
Select * FROM Orders;
SELECT * FROM Products;

--9. Delete all orders and details for a specific customer (@CustomerID)

-- First delete from OrderDetails using OrderIDs of the customer
DELETE FROM OrderDetails
WHERE OrderID IN (
    SELECT OrderID FROM Orders WHERE CustomerID = 1
);

-- Then delete from Orders
DELETE FROM Orders WHERE CustomerID = 1;
--Replace @CustomerID with an ID for testing:

DELETE FROM OrderDetails
WHERE OrderID IN (SELECT OrderID FROM Orders WHERE CustomerID = 2);

DELETE FROM Orders WHERE CustomerID = 2;

SELECT * FROM OrderDetails;
Select * FROM Orders;

--10. Insert a new product

INSERT INTO Products (ProductID, ProductName, Description, Price)
VALUES (111, 'Bluetooth Speaker', 'Portable speaker with 10W output', 3200.00);

Select * from Products;



--11. Update order status (Assuming you add Status column)

--Create a new column for Order Status

ALTER TABLE Orders ADD Status VARCHAR(20) DEFAULT 'Pending';

Select * FROM Orders;

UPDATE Orders
SET Status = 'Shipped'
WHERE OrderID = 1003;

Select * FROM Orders;

--12. Calculate and update the number of orders placed by each customer


--Create a new column for OrdersPlaced

ALTER TABLE Customers ADD OrdersPlaced INT DEFAULT 0;

UPDATE Customers
SET OrdersPlaced = (
    SELECT COUNT(*) FROM Orders
    WHERE Orders.CustomerID = Customers.CustomerID
);


SELECT * FROM Customers;

