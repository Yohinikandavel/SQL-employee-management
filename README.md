
# 🗃️ Employee Management System (SQL Project)

This is a simple SQL-based Employee Management System developed as part of my Database Management System (DBMS) learning journey. The project demonstrates how to create a relational table, insert multiple records, and run various SQL queries for data analysis and retrieval.

## 📌 Features

- Create an `Employees` table with fields such as EmpID, Name, Department, Salary, JoinDate, and Email.
- Insert 20 sample employee records.
- Execute queries to:
  - Display all employee details
  - Filter by department (e.g., IT or HR)
  - Search by salary range
  - Match names with specific patterns
  - Handle `NULL` values in fields
  - Sort by salary (descending)
  - Retrieve top N salaries and records by position
  - Find join dates based on conditions

## 🧠 Concepts Practiced

- SQL Table Design
- INSERT INTO statement
- WHERE clause with logical operators
- LIKE, IS NULL, IS NOT NULL
- ORDER BY, LIMIT, OFFSET
- BETWEEN clause
- Date filtering in SQL


## 🧾 Sample Query

```sql
SELECT * FROM Employees
WHERE Salary BETWEEN 50000 AND 60000;

