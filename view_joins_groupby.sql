create database empviewDB;
use empviewDB

-- creating employee table
CREATE TABLE employee (
    emp_id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);

INSERT INTO employee VALUES
(1, 'Arjun', 'CSE', 30000, 'Bangalore'),
(2, 'Rahul', 'ECE', 35000, 'Mysore'),
(3, 'Priya', 'CSE', 40000, 'Bangalore'),
(4, 'Sneha', 'MECH', 45000, 'Hubli'),
(5, 'Kiran', 'CIVIL', 32000, 'Mangalore');

CREATE TABLE department (
    dept_id INT,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO department VALUES
(101, 'CSE', 'Bangalore'),
(102, 'ECE', 'Mysore'),
(103, 'MECH', 'Hubli'),
(104, 'CIVIL', 'Mangalore'),
(105, 'ISE', 'Chennai');

select * from employee;
select * from department;

-- view with joins

create view employee_department_view
as
select e.name,e.salary,d.dept_name,d.location
from employee e inner join department d
on e.department=d.dept_name;

select * from employee_department_view

--left_join
-- its reutrn the all record from left table and matching record from right table
create  view employee_left_joins
as
select e.name,e.department,e.salary,d.dept_id,d.location
from employee e left join department d
on e.department=d.dept_name

select * from employee_left_joins;
select * from employee;
select * from department;

--right join
-- it returns all rows from right table and matching rows from left table
create  view employee_rightt_joins
as
select e.name,e.department,e.salary,d.dept_id,d.location
from employee e right join department d
on e.department=d.dept_name

select * from employee_rightt_joins;
select * from employee;
select * from department;



-- full outer join
--its returns  all rows from both table
create view full_outer_join
as
select e.name,e.department,e.salary,e.city,d.dept_name,d.location
from employee e full outer join department d
on e.department= d.dept_name;

select * from full_outer_join;

-- group by with view
select * from employee;
select department,count(*) 
from employee
group by department;




-- group by +having in view
select * from employee;
select department,count(*)
from employee
group by department
having count(*)>1 ;

