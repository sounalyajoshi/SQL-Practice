-- creating Employee database
CREATE DATABASE EmployeeDB
USE EmployeeDB

--creating employee table
drop table Employee
CREATE TABLE Employee (
    employee_id  INT PRIMARY KEY,
    name         VARCHAR(50),
    department   VARCHAR(50),
    salary       INT
);
-- values insert in to employee table
INSERT INTO employee VALUES 
(1, 'Rahul', 'CSE', 50000),
(2, 'Priya', 'HR', 40000),
(3, 'Kiran', 'CSE', 60000),
(4, 'Sneha', 'Finance', 45000),
(5, 'Arjun', 'HR', 55000);

SELECT * FROM Employee;

--SINGLE ROW SUBQUERY--
SELECT * FROM Employee;

SELECT name,salary 
FROM Employee
where salary > (SELECT AVG(salary) --50000
FROM Employee
);


-- MULTI ROW SUBQUERY--
SELECT * FROM Employee;

 SELECT name, salary
 from Employee
 WHERE salary IN(       -- IN,ALL,ANY
 SELECT salary 
 FROM Employee
 WHERE department = 'CSE'
 );

 --ANY -> it comapares a value with at least one return value by inner query
 --ALL -> it compares a value with every returned value by inner query
  SELECT * FROM Employee;
 SELECT *
 from Employee
 WHERE salary >all(       -- IN,ALL,ANY
 SELECT salary 
 FROM Employee
 WHERE department='HR'
 );


 --NESTED SUBQUERY--
 SELECT * FROM Employee;
 SELECT name,salary FROM Employee
 WHERE salary > (
 SELECT AVG(salary) 
 FROM Employee
 where department =(SELECT department 
 FROM Employee
 WHERE name='priya')
 );
 

 --CORRELATED  SUBQUERY--
 SELECT * FROM Employee;

 SELECT e1.name,e1.salary,e1.department
 FROM Employee AS e1
 WHERE e1.salary> (
 SELECT AVG(e2.salary)
 FROM employee AS e2
 WHERE e2.department=e1.department
 );















