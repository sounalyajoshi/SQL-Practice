SELECT * from Emplyoees;

SELECT count(*) from Emplyoees;
SELECT sum(salary)  As totalSalary from Emplyoees;
SELECT avg(age) from Emplyoeess;
SELECT * from Emplyoees;

select min(salary)  As minsalary from Emplyoees;
SELECT max(salary)  As maxsalary from Emplyoees;


SELECT * from Emplyoees order by salary asc;
SELECT * from Emplyoees order by age desc;


select  distinct age from Emplyoees;

select Top 2 * from Emplyoees;
select top 1 * from Emplyoees;

select top 2 * from Emplyoees  order by salary asc


select  top 3* from Emplyoees;
select * from Emplyoees;
select sum(salary) as totalsalary, age  from Emplyoees

group by age;

insert into Emplyoees
values(6,'manju',27,45000,'mumbai');
select * from Emplyoees;

select max(salary), [location] from Emplyoees
group by [location];

 update Emplyoees
 set salary =16000.79
 where EmpId=4;
 select * from Emplyoees;

 update Emplyoees
 set age= 22
where EmpName='jhon' and EmpId=1;


delete from Emplyoees
where EmpName='smith';

select * from Emplyoees;
