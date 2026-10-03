--1
select * from employee
select * from employee
where sal>ANY(select sal from employee
              where deptno=30);
--2
select * from employee
select ename,job from employee
where job IN(select job from employee
              where mgr=1);
--3
select ename,sal from employee
 where deptno=(select deptno from employee
              where ename='smith');
--4
select job, deptno from employee
where deptno IN(select deptno from employee
               where mgr=1);

--5
select ename, sal from employee
where SAL >ALL(select avg(sal) from employee
                where deptno=30);
--6
select ename,sal from employee
where sal>ALL(select sal from employee
            where deptno=20);