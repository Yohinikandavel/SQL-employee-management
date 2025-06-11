## 🧩 Project 1: Employee Management System – SQL Practice

This project simulates a basic **Employee Management System** using SQL. It demonstrates database design, data insertion, and querying logic that reflects real-world employee data processing.

### 📌 Key Features

* Design of a normalized employee table structure
* Insertion of 20 diverse and realistic employee records
* Implementation of:

  * Department-based filters (IT, HR, etc.)
  * Salary range lookups
  * Pattern-based name searches
  * NULL value checks (email and join date)
  * Sorting employees by salary (desc)
  * Paginated queries using `OFFSET` & `FETCH`
  * Join date conditions (e.g., after a specific date)

### 🧠 Technical Concepts

* Data Definition Language (DDL) & Data Manipulation Language (DML)
* `WHERE`, `IN`, `BETWEEN`, `LIKE`, `IS NULL` operations
* Sorting (`ORDER BY`)
* Pagination (`OFFSET...FETCH`)
* Conditional data filtering (dates, salaries)

### 📄 Sample Query

```sql
SELECT * FROM Employees1
WHERE JoinDate IS NULL OR Salary = 0;
```

### 📂 File: `SQLQuery2.sql`

---

## 🧩 Project 2: Multi-Database SQL Operations

This advanced SQL project showcases operations across multiple databases (e.g., `hexaware`, `puvi`, `hari`, `Courses`, `BigData`). It combines schema definition, metadata queries, and administrative operations.

### 📌 Key Features

* Creation and switching between multiple databases
* Table creation for:

  * Employees
  * Games
  * Course offerings
* Use of administrative queries to:

  * Add/Drop/Modify columns
  * Rename databases and tables (`sp_rename`)
  * Query metadata with `sp_help` and `INFORMATION_SCHEMA`
* String pattern searches using `LIKE`, `NOT LIKE`, wildcards
* Course filtering based on fee, name, and duration
* Sorting and offset-based row retrieval for salary & fee analysis

### 🧠 Technical Concepts

* Multi-database switching (`USE`)
* System procedures: `sp_help`, `sp_rename`
* Column-level operations (`ALTER TABLE`)
* Metadata inspection (`INFORMATION_SCHEMA.COLUMNS`)
* SQL string filters and pattern logic
* Data pagination with `OFFSET`, `FETCH`
* Fee range filtering and data updates

### 📄 Sample Query

```sql
SELECT * FROM C_Details
WHERE Duration IN ('3 Months', '6 Months');
```

### 📂 File: `SQLQuery1.sql`

---

## 🔍 Bonus: Games Table & Course Management Practice

Within `SQLQuery1.sql`, there's additional focus on:

* A **Games table** (`games`) with player types and game categories
* A **Courses table** (`C_Details`) to simulate course enrollment with fees and durations

These offer mini-practice blocks to simulate:

* Domain-based data categorization
* Text-based filtering (`LIKE '%Development%'`)
* Updating records by ID or name
* Null checks and text pattern logic

---

## 🏁 What You Will Learn

By reviewing or executing these SQL projects, you will strengthen:

* Core SQL syntax (DDL/DML)
* Data filtering, sorting, and logic operations
* Database administration basics
* Pagination and result slicing techniques
* Hands-on database design in realistic use cases

---

## 🧑‍💻 Developed & Practiced By

**Yohini K**

📧 [yohinikandavel11@gmail.com](mailto:yohinikandavel11@gmail.com)

🔗 [LinkedIn Profile](https://www.linkedin.com/in/yohini-k-cse-mvit)

