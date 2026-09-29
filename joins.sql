drop table Department;
 CREATE TABLE Department(
 department_id INT,
 department_name VARCHAR(50)
 );

 insert into Department values(1,'IT');
 insert into Department values(2,'HR');

 insert into Department values(3,'Finance');


drop table Employee;


CREATE TABLE Employees(
emp_id INT,
emp_name VARCHAR(40),
department_id INT
);
SELECT * FROM Employees;
SELECT * FROM Department;
insert into Employees values(101,'ravi',1)
insert into Employees values(102,'priya',2);
insert into Employees values(103,'arun',1);
insert into Employees values(104,'sita',5);

SELECT Employees.emp_name,
Department.department_name
from Employees 
INNER JOIN Department
ON Employees.department_id=Department.department_id;
select * from Employees;
select * from Department;

select Employees.emp_name, 
Department.department_name
from Employees INNER JOIN Department
ON Employees.department_id=Department.department_id;


-- left join


select Employees.emp_name,
Department.department_name
from Employees LEFT JOIN Department
ON Employees.department_id=Department.department_id;


--right join

 select Employees.emp_name,
 Department.department_name from
 Employees RIGHT JOIN  Department
 ON Employees.department_id=Department.department_id;
 select * from employees;
 select * FROM department;
 -- FULL OUTER JOIN

 select * from employees 
 full outer join department
 ON employees.department_id=department.department_id;

 
