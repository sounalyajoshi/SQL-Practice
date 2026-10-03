CREATE DATABASE EmployeeList;
USE EmployeeList;
CREATE TABLE Employee (
    empno INT,
    ename VARCHAR(50),
    job VARCHAR(50),
    sal DECIMAL(10,2),
    deptno INT,
    mgr INT
);

INSERT INTO employee (empno, ename, job, sal, deptno, mgr)
VALUES
(1, 'SMITH', 'CLERK', 800, 20, NULL),
(2, 'ALLEN', 'SALESMAN', 1600, 30, 1),
(3, 'WARD', 'SALESMAN', 1250, 30, 2),
(4, 'JONES', 'MANAGER', 2975, 20, 1),
(5, 'BLAKE', 'MANAGER', 2850, 30, 1),
(6, 'CLARK', 'MANAGER', 2450, 10, 1),
(7, 'KING', 'PRESIDENT', 5000, 10, NULL);


--1 single row subquery practice

Select * from employee;
SELECT ename,sal from employee
where sal<(select sal from employee
              where ename='jones')

--2
select ename,sal from employee
where sal>(select sal from employee
            where ename='allen');
--3
select ename,deptno from employee
where deptno=(select deptno from employee
               where ename='smith');
--4
select * from employee
where job=(select job from employee
           where ename='king');

--5
select ename,sal from employee
where  sal=(select sal from employee 
             where ename='clark');
--6
select ename,sal from employee
where sal>(select min(sal)
           from employee);
--7
 select ename,sal from employee
 where sal<(select max(sal) 
            from employee);
--8
select ename,empno,mgr from employee
where mgr=(select mgr from employee
             where ename='blake');
--9
select ename,sal from employee
where sal>(select avg(sal)
           from employee);
--10

select * from employee
where mgr=(select mgr from employee
          where ename='ward');