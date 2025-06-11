create database hexaware;

use hexaware;

create table employee (
	emp_id int primary key,
	emp_name varchar(50) not null,
	emp_salary decimal(10, 2) not null,
	emp_department varchar(50) not null
);

create database puvi;

use puvi;

create table games (
	s_no int primary key,
	g_name varchar(50) not null,
	players varchar(50) not null,
	g_type varchar(50) not null,
	p_count int not null
);

use sample1;

alter database puvi modify name=hari;

use hexaware;

drop database sample1;

select name from sys.databases;

select DB_NAME() as current_database;

use hari;

insert into games values(1, 'Chess', 'Arun', 'Strategy', 2);
insert into games values(2, 'Football', 'Balu', 'Team', 22);
insert into games values(3, 'Ludo', 'Charu', 'Casual', 4);
insert into games values(4, 'Badminton', 'Dune', 'Racquet', 2);
insert into games values(5, 'Cricket', 'Hardik', 'Team', 11);
insert into games values(6, 'Tennis', 'Sindhu', 'Racquet', 2);

select * from games;

exec sp_help games;

select * from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'games';

use hexaware;

alter table employee
add emp_email varchar(100);

select * from employee;

insert into emp_details values(1, 'John Doe', 50000, 'IT','jo@gmail.com');
insert into emp_details values(2, 'Jane Smith', 60000, 'HR','jane@gmail.com');
insert into emp_details values(3, 'Alice Johnson', 55000, 'Finance','alice@gmail.com');
insert into emp_details values(4, 'Bob Brown', 70000, 'Marketing','bobby@gmail.com');
insert into emp_details values(5, 'Charlie White', 65000, 'IT','charls@gmail.com');


drop table employee;

select * from emp_details;


/*

--drop a col
alter table employee
drop column email;
--modify a col
alter table employee
alter column Name char(50);
--add a primary key
alter table employee
ADD CONSTRAINT PK_EMP Primary key(Id);
--drop a constraint
alter table employee
drop CONSTRAINT PK_EMP;
-----------------------------------------------------------------------------
select * from employee;
--delete the row
delete from emp where Id=4;
--delete all the rows but keep the table stru
delete from emp
or
truncate table emp;
--update specific row
update emp
set salary=90000 where Id=3;
--update multiple column
update emp
set Name='Dharni' ,Salary=99999 where Id=2; 
--rename table : sql server does have a command to rename a table : mysql has but you can rename through stored procedure: sp_rename
sp_rename 'emp','Employee';


*/
use hexaware;

select * from emp_details where not emp_salary<=57000;

create database Courses;

use Courses;

create table C_Details (
	C_ID int primary key,
	C_Name varchar(100) not null,
	Duration varchar(50) not null,
	C_Fees decimal(10, 2) not null
);

insert into C_Details values(1, 'Python Programming', '3 Months', 15000.00);
insert into C_Details values(2, 'Data Science', '6 Months', 30000.00);
insert into C_Details values(3, 'Web Development', '4 Months', 20000.00);
insert into C_Details values(4, 'Machine Learning', '5 Months', 25000.00);
insert into C_Details values(5, 'Cloud Computing', '3 Months', 18000.00);

select * from C_Details where C_Fees between 20000.00 and 30000.00;

select * from C_Details where C_Name like '%Development%';

select * from C_Details where Duration in ('3 Months', '6 Months');

update C_Details set C_Fees = 32000.00 where C_ID = 2 ;
update C_Details set Duration = '5 Months' where C_ID = 3;

select * from C_Details where Duration not in ('3 Months', '6 Months');

select * from C_Details ;

------------------------------------------------------------------------------

select * from C_Details;
 
--START WITH single letter
 
select * from C_Details
where C_Name LIKE 'd%';
 
--end with
 
select * from C_Details
where C_Name LIKE '%t';
 
--substring
 
select * from C_Details
where C_Name LIKE '%tne%';
 
--single char
 
select * from C_Details
where C_Name LIKE '__tnet';
 
--not like

select * from C_Details
where C_ID is null; ---null

select * from C_Details
where C_Name is not null; ---not null

---------------------------------------------------------------------
/*
--order by
 
select * from Course;
 
select CName, CFees from Course
order by CFees asc;
 
--desc
select CName, CFees from Course
order by CFees desc;
--order by dept, then sal
 
select name, dept, salary from emp
order by dept asc, salary desc; */

------------------------------------------------------------------------

use BigData;

CREATE TABLE Employee

(

  ID INT PRIMARY KEY IDENTITY(1,1),

  Name VARCHAR(100),

  EmailID VARCHAR(100),

  Gender VARCHAR(100),

  Department VARCHAR(100),

  Salary INT,

  Age INT,

  CITY VARCHAR(100)

)

--Insert some data into Employee table

INSERT INTO Employee VALUES('Pranaya','Pranaya@g.com','Male', 'IT', 25000, 30,'Mumbai')

INSERT INTO Employee VALUES('Tarun','Tarun@g.com','Male', 'Payroll', 30000, 27,'Odisha')

INSERT INTO Employee VALUES('Priyanka','Priyanka@g.com','Female', 'IT', 27000, 25,'Bangalore')

INSERT INTO Employee VALUES('Preety','Preety@g.com','Female', 'HR', 35000, 26,'Bangalore')

INSERT INTO Employee VALUES('Ramesh','Ramesh@g.com','Male','IT', 26000, 27,'Mumbai')

INSERT INTO Employee VALUES('Pramod','Pramod@g.com','Male','HR', 29000, 28,'Odisha')

INSERT INTO Employee VALUES('Anurag','Anurag@g.com','Male', 'Payroll', 27000, 26,'Odisha')

INSERT INTO Employee VALUES('Hina','Hina@g.com','Female','HR', 26000, 30,'Mumbai')

INSERT INTO Employee VALUES('Sambit','Sambit@g.com','Male','Payroll', 30000, 25,'Odisha')

INSERT INTO Employee VALUES('Manoj','Manoj@g.com','Male','HR', 30000, 28,'Odisha')

INSERT INTO Employee VALUES('Sara',' Sara@g.com','Female', 'Payroll', 28000, 27,'Mumbai')

INSERT INTO Employee VALUES('Lima','Lima@g.com','Female','HR', 30000, 30,'Bangalore')

INSERT INTO Employee VALUES('Dipak','Dipak@g.com','Male','Payroll', 32000, 25,'Bangalore')
 
select * from Employee;


-----------------------------------------------------------------------------------------------------------

SELECT * FROM Employee;

--fetch 3 first emp by sal asc
 
select Name, Salary from Employee
order by Salary asc
OFFSET 0 ROWS
FETCH NEXT 3 ROWS ONLY;
 
-- SKIP 2 first emp and fetch next 2

select Name, salary from Employee
order by salary asc
OFFSET 2 ROWS
FETCH NEXT 2 ROWS ONLY;

------------------------------------------------------------------------------------------------------
