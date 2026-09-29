CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10,2),
    departno INT
);
drop table employee;
CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10,2),
    departno INT
);
INSERT INTO employee (id, name, salary , departno)
VALUES
(1, 'Smith', 5000,10),
(2, 'Peter', 10000, 10),
(3, 'Jhon', 26000,10),
(4, 'kumar', 50000,20),

(5, 'anu', 35000,30),

(6, 'raj', 20000,20);

select * from employee;

select * from employee
where salary>all(select salary from employee --5000,10000,26000
               where  departno=10);
select * from Department;
select * from employee;


select name ,salary from employee where id=
(
select department_id from department where department_name= --1

(select 'finance')
);
select * FROM employee;
select * from department;
select department_name from department
where department_id IN
(select id from employee
where departno=10);

select name,salary from employee
where salary>any(select salary from employee
where departno=10);